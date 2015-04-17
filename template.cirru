
var
  stir $ require :stir-template
  (object~ html head title meta script body div) stir

= module.exports $ \ (data)
  return $ stir.render
    stir.doctype
    html null
      head null
        title null :Workflow
        meta $ object (:charset :utf-8)
        script $ object (:src data.main)
      body null
        div null :empty
