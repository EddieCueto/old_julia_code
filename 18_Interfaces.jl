abstract type Expression end

function evaluate(exp::Expression,ctx::Context)
    error("Must implement evaluate", typeof(exp), ", ctx)")
end