# 
# 1. Locate the template file qualification-workflow-template.R which is part of the installation of the R package ospsuite.reportingengine
#    Once the package ospsuite.reportingengine is installed: type in R the command below to find out the location of the template
#
#    system.file("extdata", package = "ospsuite.reportingengine")
#
#    Alternatively, you will find the template in the online documentation of the reporting engine:
#    https://www.open-systems-pharmacology.org/OSPSuite.ReportingEngine/articles/qualification-workflow.html#template
#
# 2. Replace the content of this file with the content of the template and adjust the code after that if required (s. the inline comments in the template code)
# 
# 3. Create a qualification report in R via the commands below:
#
# source("workflow.R", encoding="UTF-8")
# createQualificationReport(...)

# All qualification workflow settings, which are specific for 
#   a. the installation of the OSP Suite or the qualification framework 
#   b. the computing environment where the workflow is being executed
# must be always passed as arguments to the createQualificationReport function and may never be defined in the function body
 
# The rule of thumb is:
#   Execution of the createQualificationReport function should produce qualification report on any computer 
#   where all mandatory software components of the qualification framework are installed without any modifications of the function body. 

