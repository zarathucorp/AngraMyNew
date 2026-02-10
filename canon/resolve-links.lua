-- resolve-links.lua
-- Rewrites .md relative links to their Quarto Book chapter pages

local file_to_chapter = {
  -- ideas_foundation
  ["000_origin.md"] = "ideas_foundation.qmd",
  ["001_axioms.md"] = "ideas_foundation.qmd",
  ["002_principles_of_creation.md"] = "ideas_foundation.qmd",
  -- ideas_creator
  ["003_beyond_usefulness.md"] = "ideas_creator.qmd",
  ["004_artist_within.md"] = "ideas_creator.qmd",
  ["008_seduction_of_creation.md"] = "ideas_creator.qmd",
  ["009_rage_against_definition.md"] = "ideas_creator.qmd",
  ["010_predators_duty.md"] = "ideas_creator.qmd",
  -- ideas_economics
  ["006_aesthetic_nation.md"] = "ideas_economics.qmd",
  ["014_economics_of_beauty.md"] = "ideas_economics.qmd",
  ["023_successful_lens.md"] = "ideas_economics.qmd",
  ["024_when_critical_care_needs_witness.md"] = "ideas_economics.qmd",
  ["025_consumption_of_exempt.md"] = "ideas_economics.qmd",
  ["026_three_kingdoms_of_beauty.md"] = "ideas_economics.qmd",
  -- ideas_epistemology
  ["016_mental_lhc.md"] = "ideas_epistemology.qmd",
  ["017_when_is_a_proof_beautiful.md"] = "ideas_epistemology.qmd",
  ["018_why_strange_systems_persist.md"] = "ideas_epistemology.qmd",
  ["019_causality_question.md"] = "ideas_epistemology.qmd",
  ["020_causality_quantum.md"] = "ideas_epistemology.qmd",
  ["022_age_of_malice.md"] = "ideas_epistemology.qmd",
  -- ideas_practice
  ["005_project_doctor_k.md"] = "ideas_practice.qmd",
  ["011_lineage_as_creation.md"] = "ideas_practice.qmd",
  ["012_redefine_doctor_degree.md"] = "ideas_practice.qmd",
  ["013_decentralized_mental_os.md"] = "ideas_practice.qmd",
  -- ideas_casestudies
  ["007_case_study_unfinished_theorem.md"] = "ideas_casestudies.qmd",
  ["015_case_study_the_gravity_of_outlaws.md"] = "ideas_casestudies.qmd",
  ["021_case_study_dawn_money.md"] = "ideas_casestudies.qmd",
  ["027_case_study_perfume.md"] = "ideas_casestudies.qmd",
  -- art
  ["001_galois_quintic.md"] = "art.qmd",
  ["002_general_relativity.md"] = "art.qmd",
  ["003_one_pattern.md"] = "art.qmd",
  ["004_principia_geometry.md"] = "art.qmd",
  ["005_hangul_two_states.md"] = "art.qmd",
  ["006_feynman_diagram.md"] = "art.qmd",
  -- scripture
  ["zarathustra.md"] = "scripture.qmd",
  ["pioneers.md"] = "scripture.qmd",
  ["mengchangjun.md"] = "scripture.qmd",
  ["na_hye_suk.md"] = "scripture.qmd",
  -- protocols
  ["001_creator_operating_protocol.md"] = "protocols.qmd",
  ["002_ethics_of_creation.md"] = "protocols.qmd",
}

function Link(el)
  local target = el.target

  -- Extract filename from relative paths:
  --   ../ideas/XXX.md, ../art/XXX.md, ../scripture/XXX.md, or just XXX.md
  local filename = target:match("^%.%./ideas/(.+%.md)$")
    or target:match("^%.%./art/(.+%.md)$")
    or target:match("^%.%./scripture/(.+%.md)$")
    or target:match("^%.%./protocols/(.+%.md)$")
    or target:match("^([^/]+%.md)$")

  if not filename then return nil end

  local chapter = file_to_chapter[filename]
  if chapter then
    el.target = chapter
    return el
  end

  return nil
end
