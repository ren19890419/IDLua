-- Copyright 2013 Jon S Akhtar (Sylvanaar)
--
--   Licensed under the Apache License, Version 2.0 (the "License");
--   you may not use this file except in compliance with the License.
--   You may obtain a copy of the License at
--
--   http://www.apache.org/licenses/LICENSE-2.0
--
--   Unless required by applicable law or agreed to in writing, software
--   distributed under the License is distributed on an "AS IS" BASIS,
--   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--   See the License for the specific language governing permissions and
--   limitations under the License.


local inspection = luajava.createProxy("com.intellij.codeInspection.LocalInspectionTool", {

    getShortName = function()
        return "Skeleton"
    end,


    getDisplayName = function()
        return "Skeleton Inspection In Lua"
    end,


    buildVisitor = function(holder, onTheFly)
        return luajava.createProxy("com.sylvanaar.idea.Lua.lang.psi.visitor.LuaElementVisitor", {

        })
    end

});

return inspection