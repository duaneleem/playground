/**
 * Example of a try/catch.
 * @author Duane Leem
 * @since 2017-10-07
 */

export class TryCatchExample {
    /**
     * Initiates a function but catches an exception if one is thrown.
     */
    mtdExample() {
      try {
        for (let editIndex = 0; editIndex < partner.objProjects.length; editIndex++)
        {
            if (partner.objProjects[editIndex].id == req.body.projectId) {found = true; break;}
        }
        
        if (!found)
        {
            return res.status(404).json({
                title: "Project not found",
                error: {message: "The passed ID does not match any project for this charity"}
            });
        }
    
        for (let updateIndex = 0; updateIndex < partner.objProjects[editIndex].objUpdates.length; updateIndex++)
        {
            if (partner.objProjects[editIndex].objUpdates[updateIndex].id == req.body.updateId) {updateFound = true; break;}
        }
      } catch(e) {
        // We assume because it was the header set error.
        console.log("The header was already set.");
      } // try / catch
    }
  }