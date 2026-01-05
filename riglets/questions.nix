self:
{ riglib, ... }:
{
  config.riglets.questions = {
    meta = {
      intent = "playbook";
      description = "Instruct the agent to ask clarification questions before implementing stuff";
      disclosure = "eager";
      keywords = [ "rules" ];
    };
    docs = riglib.writeFileTree {
      "SKILL.md" = ''
        When I tell you to implement something for me, I want you to ask questions to clarify what has to be done before you make any change.
        In addition to clarifying the intended behaviour, if you ask me the right question, I can help you find useful functions in the code, so you don't reimplement something that already exists.
        Assign numbers to to your questions so I can answer quickly.
      '';
    };
  };
}
