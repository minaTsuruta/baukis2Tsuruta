class StaffMemberPresenter < ModelPresenter
    delegate :suspended?, to: :object

    #職員お停止フラグのON/Offを表現する記号を返す
    # On :BALLOT BOX WITH CHECK (U+2611)
    # Off :BALLOT BOX (U+2610)
    
    def suspended_mark
        object.suspended? ? raw('&#x2611;'):raw('&#x2610;')
    end
end