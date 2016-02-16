function derivative(f, string, evaluation, d = '\\partial')
    local denominator, total_order, total_order_numerical = '', '', 0;

    -- string = argument, argument, ...
    -- argument = variable^order or variable
    for argument in string.gmatch(string, '([^,]+)') do
        local variable, order = argument, 1
        if string.find(argument, '%^') then
            variable, order = argument:match('([^%^]*)%^([^%^]*)')
        end
        -- If integer, add to 'numerical' total, otherwise, concatenate directly to total_order
        if tonumber(order) ~= nil then -- if is number
            total_order_numerical = total_order_numerical + tonumber(order)
        else
            total_order = total_order..(total_order == '' and '' or ' + ')..order
        end
        local order_string = ((tonumber(order) == nil or tonumber(order) > 1) and '^{'..order..'}' or '')
        denominator = denominator..d..' '..variable..order_string..' '
    end

    -- Append numerical order if necessary
    if trim(total_order) == '' then
        total_order = (total_order_numerical > 1) and total_order_numerical or ''
    else
        total_order = total_order..((total_order_numerical > 0) and ' +'..total_order_numerical or '')
    end

    -- If non-empty, append put in superscript
    if trim(total_order) ~= '' then
        total_order = '^{'..total_order..'} '
    end

    local output = '\\frac{'..d..' '..total_order..f.. '}{'..denominator..'}'

    -- Appends evaluation if necessary
    if trim(evaluation) ~= '' then
        output = '\\left. '..output..' \\right|_{'..evaluation..'}'
    end

    tex.sprint(output)
end

function trim(s)
    s = ""..s
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end
