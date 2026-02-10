-- resolve-links.lua
-- Rewrites .md relative links to their Quarto Book chapter pages

local file_to_chapter = {
  -- ideas
  ["000_origin.md"] = "ideas_000.qmd",
  ["001_axioms.md"] = "ideas_001.qmd",
  ["002_principles_of_creation.md"] = "ideas_002.qmd",
  ["003_beyond_usefulness.md"] = "ideas_003.qmd",
  ["004_artist_within.md"] = "ideas_004.qmd",
  ["005_project_doctor_k.md"] = "ideas_005.qmd",
  ["006_aesthetic_nation.md"] = "ideas_006.qmd",
  ["007_case_study_unfinished_theorem.md"] = "ideas_007.qmd",
  ["008_seduction_of_creation.md"] = "ideas_008.qmd",
  ["009_rage_against_definition.md"] = "ideas_009.qmd",
  ["010_predators_duty.md"] = "ideas_010.qmd",
  ["011_lineage_as_creation.md"] = "ideas_011.qmd",
  ["012_redefine_doctor_degree.md"] = "ideas_012.qmd",
  ["013_decentralized_mental_os.md"] = "ideas_013.qmd",
  ["014_economics_of_beauty.md"] = "ideas_014.qmd",
  ["015_case_study_the_gravity_of_outlaws.md"] = "ideas_015.qmd",
  ["016_mental_lhc.md"] = "ideas_016.qmd",
  ["017_when_is_a_proof_beautiful.md"] = "ideas_017.qmd",
  ["018_why_strange_systems_persist.md"] = "ideas_018.qmd",
  ["019_causality_question.md"] = "ideas_019.qmd",
  ["020_causality_quantum.md"] = "ideas_020.qmd",
  ["021_case_study_dawn_money.md"] = "ideas_021.qmd",
  ["022_age_of_malice.md"] = "ideas_022.qmd",
  ["023_successful_lens.md"] = "ideas_023.qmd",
  ["024_when_critical_care_needs_witness.md"] = "ideas_024.qmd",
  ["025_consumption_of_exempt.md"] = "ideas_025.qmd",
  ["026_three_kingdoms_of_beauty.md"] = "ideas_026.qmd",
  ["027_case_study_perfume.md"] = "ideas_027.qmd",
  -- art
  ["001_galois_quintic.md"] = "art_001.qmd",
  ["002_general_relativity.md"] = "art_002.qmd",
  ["003_one_pattern.md"] = "art_003.qmd",
  ["004_principia_geometry.md"] = "art_004.qmd",
  ["005_hangul_two_states.md"] = "art_005.qmd",
  ["006_feynman_diagram.md"] = "art_006.qmd",
  -- scripture
  ["zarathustra.md"] = "scripture_zarathustra.qmd",
  ["pioneers.md"] = "scripture_pioneers.qmd",
  ["mengchangjun.md"] = "scripture_mengchangjun.qmd",
  ["na_hye_suk.md"] = "scripture_na_hye_suk.qmd",
  -- protocols
  ["001_creator_operating_protocol.md"] = "protocols_001.qmd",
  ["002_ethics_of_creation.md"] = "protocols_002.qmd",
  -- fravashi
  ["002_gpt_prompt.md"] = "fravashi_002.qmd",
}

function Link(el)
  local target = el.target

  local filename = target:match("^%.%./ideas/(.+%.md)$")
    or target:match("^%.%./art/(.+%.md)$")
    or target:match("^%.%./scripture/(.+%.md)$")
    or target:match("^%.%./protocols/(.+%.md)$")
    or target:match("^%.%./fravashi/(.+%.md)$")
    or target:match("^([^/]+%.md)$")

  if not filename then return nil end

  local chapter = file_to_chapter[filename]
  if chapter then
    el.target = chapter
    return el
  end

  return nil
end
