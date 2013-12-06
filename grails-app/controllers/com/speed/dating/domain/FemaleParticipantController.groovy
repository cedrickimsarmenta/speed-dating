package com.speed.dating.domain

import org.springframework.dao.DataIntegrityViolationException

class FemaleParticipantController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [femaleParticipantInstanceList: FemaleParticipant.list(params), femaleParticipantInstanceTotal: FemaleParticipant.count()]
    }

    def create() {
        [femaleParticipantInstance: new FemaleParticipant(params)]
    }

    def save() {
        def femaleParticipantInstance = new FemaleParticipant(params)
        if (!femaleParticipantInstance.save(flush: true)) {
            render(view: "create", model: [femaleParticipantInstance: femaleParticipantInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'femaleParticipant.label', default: 'FemaleParticipant'), femaleParticipantInstance.id])
        redirect(action: "show", id: femaleParticipantInstance.id)
    }

    def show(Long id) {
        def femaleParticipantInstance = FemaleParticipant.get(id)
        if (!femaleParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'femaleParticipant.label', default: 'FemaleParticipant'), id])
            redirect(action: "list")
            return
        }

        [femaleParticipantInstance: femaleParticipantInstance]
    }

    def edit(Long id) {
        def femaleParticipantInstance = FemaleParticipant.get(id)
        if (!femaleParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'femaleParticipant.label', default: 'FemaleParticipant'), id])
            redirect(action: "list")
            return
        }

        [femaleParticipantInstance: femaleParticipantInstance]
    }

    def update(Long id, Long version) {
        def femaleParticipantInstance = FemaleParticipant.get(id)
        if (!femaleParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'femaleParticipant.label', default: 'FemaleParticipant'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (femaleParticipantInstance.version > version) {
                femaleParticipantInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'femaleParticipant.label', default: 'FemaleParticipant')] as Object[],
                          "Another user has updated this FemaleParticipant while you were editing")
                render(view: "edit", model: [femaleParticipantInstance: femaleParticipantInstance])
                return
            }
        }

        femaleParticipantInstance.properties = params

        if (!femaleParticipantInstance.save(flush: true)) {
            render(view: "edit", model: [femaleParticipantInstance: femaleParticipantInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'femaleParticipant.label', default: 'FemaleParticipant'), femaleParticipantInstance.id])
        redirect(action: "show", id: femaleParticipantInstance.id)
    }

    def delete(Long id) {
        def femaleParticipantInstance = FemaleParticipant.get(id)
        if (!femaleParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'femaleParticipant.label', default: 'FemaleParticipant'), id])
            redirect(action: "list")
            return
        }

        try {
            femaleParticipantInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'femaleParticipant.label', default: 'FemaleParticipant'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'femaleParticipant.label', default: 'FemaleParticipant'), id])
            redirect(action: "show", id: id)
        }
    }
}
