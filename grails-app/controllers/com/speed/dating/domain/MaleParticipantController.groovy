package com.speed.dating.domain

import org.springframework.dao.DataIntegrityViolationException

class MaleParticipantController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [maleParticipantInstanceList: MaleParticipant.list(params), maleParticipantInstanceTotal: MaleParticipant.count()]
    }

    def create() {
        [maleParticipantInstance: new MaleParticipant(params)]
    }

    def save() {
        def maleParticipantInstance = new MaleParticipant(params)
        if (!maleParticipantInstance.save(flush: true)) {
            render(view: "create", model: [maleParticipantInstance: maleParticipantInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'maleParticipant.label', default: 'MaleParticipant'), maleParticipantInstance.id])
        redirect(action: "show", id: maleParticipantInstance.id)
    }

    def show(Long id) {
        def maleParticipantInstance = MaleParticipant.get(id)
        if (!maleParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'maleParticipant.label', default: 'MaleParticipant'), id])
            redirect(action: "list")
            return
        }

        [maleParticipantInstance: maleParticipantInstance]
    }

    def edit(Long id) {
        def maleParticipantInstance = MaleParticipant.get(id)
        if (!maleParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'maleParticipant.label', default: 'MaleParticipant'), id])
            redirect(action: "list")
            return
        }

        [maleParticipantInstance: maleParticipantInstance]
    }

    def update(Long id, Long version) {
        def maleParticipantInstance = MaleParticipant.get(id)
        if (!maleParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'maleParticipant.label', default: 'MaleParticipant'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (maleParticipantInstance.version > version) {
                maleParticipantInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'maleParticipant.label', default: 'MaleParticipant')] as Object[],
                          "Another user has updated this MaleParticipant while you were editing")
                render(view: "edit", model: [maleParticipantInstance: maleParticipantInstance])
                return
            }
        }

        maleParticipantInstance.properties = params

        if (!maleParticipantInstance.save(flush: true)) {
            render(view: "edit", model: [maleParticipantInstance: maleParticipantInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'maleParticipant.label', default: 'MaleParticipant'), maleParticipantInstance.id])
        redirect(action: "show", id: maleParticipantInstance.id)
    }

    def delete(Long id) {
        def maleParticipantInstance = MaleParticipant.get(id)
        if (!maleParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'maleParticipant.label', default: 'MaleParticipant'), id])
            redirect(action: "list")
            return
        }

        try {
            maleParticipantInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'maleParticipant.label', default: 'MaleParticipant'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'maleParticipant.label', default: 'MaleParticipant'), id])
            redirect(action: "show", id: id)
        }
    }
}
