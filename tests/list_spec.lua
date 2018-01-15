local list = require './src/list'

describe("src/list.lua", function()
    describe('difference2', function()
        it('should find missing cow', function()
            local diff = list.difference2({'uno', 'dos', 'tres'})({'tres'})
            assert.are.same({'uno', 'dos'}, diff)
        end)
        -- TODO: right should work, check it out now, the funk soul bruvah
        -- it('should find missing cow on right #cow', function()
        --     local diff = list.difference2({'tres'})({'uno', 'dos', 'tres'})
        --     assert.are.same({'uno', 'dos'}, diff)
        -- end)
    end)
    describe('fill', function()
        it('should fill a table with cow', function()
            local result = list.fill('cow')(1)(3)({})
            assert.are.same({'cow', 'cow', 'cow'}, result)
        end)
        it('should fill a table with cow even if filled with chicken', function()
            local MOORTTALLL_KOOMMMBATTT = {'chicken', 'Sub Zero'}
            local result = list.fill('cow')(3)(5)(MOORTTALLL_KOOMMMBATTT)
            assert.are.same({'chicken', 'Sub Zero', 'cow', 'cow', 'cow'}, result)
        end)
    end)
end)