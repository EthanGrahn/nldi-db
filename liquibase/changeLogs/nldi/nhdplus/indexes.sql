--liquibase formatted sql

--changeset drsteini:create_index.nhdplus.i398fromcomid runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i398fromcomid' and c.relkind = 'i'
create index i398fromcomid on nhdplus.megadiv_np21 using btree (fromcomid) with (fillfactor=75);
--rollback drop index nhdplus.i398fromcomid;

--changeset drsteini:create_index.nhdplus.i444nhdplus_regi_1 runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i444nhdplus_regi_1' and c.relkind = 'i'
create index i444nhdplus_regi_1 on nhdplus.megadiv_np21 using btree (nhdplus_region) with (fillfactor=75);
--rollback drop index nhdplus.i444nhdplus_regi_1;

--changeset drsteini:create_index.nhdplus.i664tocomid runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i664tocomid' and c.relkind = 'i'
create index i664tocomid on nhdplus.megadiv_np21 using btree (tocomid) with (fillfactor=75);
--rollback drop index nhdplus.i664tocomid;

--changeset drsteini:create_index.nhdplus.r34_sde_rowid_uk runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'r34_sde_rowid_uk' and c.relkind = 'i'
create unique index r34_sde_rowid_uk on nhdplus.megadiv_np21 using btree (objectid) with (fillfactor=60);
--rollback drop index nhdplus.r34_sde_rowid_uk;

--changeset drsteini:create_index.nhdplus.a162_ix1 runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'a162_ix1' and c.relkind = 'i'
create index a162_ix1 on nhdplus.nhdflowline_np21 using gist (shape);
--rollback drop index nhdplus.a162_ix1;

--changeset drsteini:create_index.nhdplus.i160catchment_fe runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i160catchment_fe' and c.relkind = 'i'
create index i160catchment_fe on nhdplus.nhdflowline_np21 using btree (catchment_featureid) with (fillfactor=75);
--rollback drop index nhdplus.i160catchment_fe;

--changeset drsteini:create_index.nhdplus.i206streamorder runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i206streamorder' and c.relkind = 'i'
create index i206streamorder on nhdplus.nhdflowline_np21 using btree (streamorder) with (fillfactor=75);
--rollback drop index nhdplus.i206streamorder;

--changeset drsteini:create_index.nhdplus.i270nhdplus_regi runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i270nhdplus_regi' and c.relkind = 'i'
create index i270nhdplus_regi on nhdplus.nhdflowline_np21 using btree (nhdplus_region) with (fillfactor=75);
--rollback drop index nhdplus.i270nhdplus_regi;

--changeset drsteini:create_index.nhdplus.i301gnis_id runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i301gnis_id' and c.relkind = 'i'
create index i301gnis_id on nhdplus.nhdflowline_np21 using btree (gnis_id) with (fillfactor=75);
--rollback drop index nhdplus.i301gnis_id;

--changeset drsteini:create_index.nhdplus.i387wbarea_fcode runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i387wbarea_fcode' and c.relkind = 'i'
create index i387wbarea_fcode on nhdplus.nhdflowline_np21 using btree (wbarea_fcode) with (fillfactor=75);
--rollback drop index nhdplus.i387wbarea_fcode;

--changeset drsteini:create_index.nhdplus.i468reachcode runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i468reachcode' and c.relkind = 'i'
create index i468reachcode on nhdplus.nhdflowline_np21 using btree (reachcode) with (fillfactor=75);
--rollback drop index nhdplus.i468reachcode;

--changeset drsteini:create_index.nhdplus.i51streamlevel runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i51streamlevel' and c.relkind = 'i'
create index i51streamlevel on nhdplus.nhdflowline_np21 using btree (streamlevel) with (fillfactor=75);
--rollback drop index nhdplus.i51streamlevel;

--changeset drsteini:create_index.nhdplus.i540wbarea_ftype runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i540wbarea_ftype' and c.relkind = 'i'
create index i540wbarea_ftype on nhdplus.nhdflowline_np21 using btree (wbarea_ftype) with (fillfactor=75);
--rollback drop index nhdplus.i540wbarea_ftype;

--changeset drsteini:create_index.nhdplus.i576permanent_id runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i576permanent_id' and c.relkind = 'i'
create unique index i576permanent_id on nhdplus.nhdflowline_np21 using btree (permanent_identifier) with (fillfactor=75);
--rollback drop index nhdplus.i576permanent_id;

--changeset drsteini:create_index.nhdplus.i603wbd_huc12 runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i603wbd_huc12' and c.relkind = 'i'
create index i603wbd_huc12 on nhdplus.nhdflowline_np21 using btree (wbd_huc12) with (fillfactor=75);
--rollback drop index nhdplus.i603wbd_huc12;

--changeset drsteini:create_index.nhdplus.i605nhdplus_comi runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i605nhdplus_comi' and c.relkind = 'i'
create unique index i605nhdplus_comi on nhdplus.nhdflowline_np21 using btree (nhdplus_comid) with (fillfactor=75);
--rollback drop index nhdplus.i605nhdplus_comi;

--changeset drsteini:create_index.nhdplus.i655gnis_name runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i655gnis_name' and c.relkind = 'i'
create index i655gnis_name on nhdplus.nhdflowline_np21 using btree (gnis_name) with (fillfactor=75);
--rollback drop index nhdplus.i655gnis_name;

--changeset drsteini:create_index.nhdplus.i757wbarea_nhdpl runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i757wbarea_nhdpl' and c.relkind = 'i'
create index i757wbarea_nhdpl on nhdplus.nhdflowline_np21 using btree (wbarea_nhdplus_comid) with (fillfactor=75);
--rollback drop index nhdplus.i757wbarea_nhdpl;

--changeset drsteini:create_index.nhdplus.i814hydroseq runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i814hydroseq' and c.relkind = 'i'
create index i814hydroseq on nhdplus.nhdflowline_np21 using btree (hydroseq) with (fillfactor=75);
--rollback drop index nhdplus.i814hydroseq;

--changeset drsteini:create_index.nhdplus.i818wbarea_perma runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i818wbarea_perma' and c.relkind = 'i'
create index i818wbarea_perma on nhdplus.nhdflowline_np21 using btree (wbarea_permanent_identifier) with (fillfactor=75);
--rollback drop index nhdplus.i818wbarea_perma;

--changeset drsteini:create_index.nhdplus.i82ftype runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i82ftype' and c.relkind = 'i'
create index i82ftype on nhdplus.nhdflowline_np21 using btree (ftype) with (fillfactor=75);
--rollback drop index nhdplus.i82ftype;

--changeset drsteini:create_index.nhdplus.i835fcode runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i835fcode' and c.relkind = 'i'
create index i835fcode on nhdplus.nhdflowline_np21 using btree (fcode) with (fillfactor=75);
--rollback drop index nhdplus.i835fcode;

--changeset drsteini:create_index.nhdplus.i871navigable runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i871navigable' and c.relkind = 'i'
create index i871navigable on nhdplus.nhdflowline_np21 using btree (navigable) with (fillfactor=75);
--rollback drop index nhdplus.i871navigable;

--changeset drsteini:create_index.nhdplus.r368_sde_rowid_uk runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'r368_sde_rowid_uk' and c.relkind = 'i'
create unique index r368_sde_rowid_uk on nhdplus.nhdflowline_np21 using btree (objectid) with (fillfactor=60);
--rollback drop index nhdplus.r368_sde_rowid_uk;

--changeset drsteini:create_index.nhdplus.i52dncomid runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i52dncomid' and c.relkind = 'i'
create index i52dncomid on nhdplus.nhdplusconnect_np21 using btree (dncomid) with (fillfactor=75);
--rollback drop index nhdplus.i52dncomid;

--changeset drsteini:create_index.nhdplus.i841upcomid runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i841upcomid' and c.relkind = 'i'
create index i841upcomid on nhdplus.nhdplusconnect_np21 using btree (upcomid) with (fillfactor=75);
--rollback drop index nhdplus.i841upcomid;

--changeset drsteini:create_index.nhdplus.r325_sde_rowid_uk
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'r325_sde_rowid_uk' and c.relkind = 'i'
create unique index r325_sde_rowid_uk on nhdplus.nhdplusconnect_np21 using btree (objectid) with (fillfactor=60);
--rollback drop index nhdplus.r325_sde_rowid_uk;

--changeset drsteini:create_index.nhdplus.i177terminalpath runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i177terminalpath' and c.relkind = 'i'
create index i177terminalpath on nhdplus.plusflowlinevaa_np21 using btree (terminalpathid) with (fillfactor=75);
--rollback drop index nhdplus.i177terminalpath;

--changeset drsteini:create_index.nhdplus.i325comid runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i325comid' and c.relkind = 'i'
create unique index i325comid on nhdplus.plusflowlinevaa_np21 using btree (comid) with (fillfactor=75);
--rollback drop index nhdplus.i325comid;

--changeset drsteini:create_index.nhdplus.i349reachcode runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i349reachcode' and c.relkind = 'i'
create index i349reachcode on nhdplus.plusflowlinevaa_np21 using btree (reachcode) with (fillfactor=75);
--rollback drop index nhdplus.i349reachcode;

--changeset drsteini:create_index.nhdplus.i427fcode runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i427fcode' and c.relkind = 'i'
create index i427fcode on nhdplus.plusflowlinevaa_np21 using btree (fcode) with (fillfactor=75);
--rollback drop index nhdplus.i427fcode;

--changeset drsteini:create_index.nhdplus.i442hydroseq runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i442hydroseq' and c.relkind = 'i'
create index i442hydroseq on nhdplus.plusflowlinevaa_np21 using btree (hydroseq) with (fillfactor=75);
--rollback drop index nhdplus.i442hydroseq;

--changeset drsteini:create_index.nhdplus.i509nhdplus_regi runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i509nhdplus_regi' and c.relkind = 'i'
create index i509nhdplus_regi on nhdplus.plusflowlinevaa_np21 using btree (nhdplus_region) with (fillfactor=75);
--rollback drop index nhdplus.i509nhdplus_regi;

--changeset drsteini:create_index.nhdplus.i638streamorder runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i638streamorder' and c.relkind = 'i'
create index i638streamorder on nhdplus.plusflowlinevaa_np21 using btree (streamorder) with (fillfactor=75);
--rollback drop index nhdplus.i638streamorder;

--changeset drsteini:create_index.nhdplus.i648levelpathid runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i648levelpathid' and c.relkind = 'i'
create index i648levelpathid on nhdplus.plusflowlinevaa_np21 using btree (levelpathid) with (fillfactor=75);
--rollback drop index nhdplus.i648levelpathid;

--changeset drsteini:create_index.nhdplus.i910permanent_id runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i910permanent_id' and c.relkind = 'i'
create unique index i910permanent_id on nhdplus.plusflowlinevaa_np21 using btree (permanent_identifier) with (fillfactor=75);
--rollback drop index nhdplus.i910permanent_id;

--changeset drsteini:create_index.nhdplus.i954streamlevel runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i954streamlevel' and c.relkind = 'i'
create index i954streamlevel on nhdplus.plusflowlinevaa_np21 using btree (streamlevel) with (fillfactor=75);
--rollback drop index nhdplus.i954streamlevel;

--changeset drsteini:create_index.nhdplus.r45_sde_rowid_uk runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'r45_sde_rowid_uk' and c.relkind = 'i'
create unique index r45_sde_rowid_uk on nhdplus.plusflowlinevaa_np21 using btree (objectid) with (fillfactor=60);
--rollback drop index nhdplus.r45_sde_rowid_uk;

--changeset drsteini:create_index.nhdplus.i12fromcomid runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i12fromcomid' and c.relkind = 'i'
create index i12fromcomid on nhdplus.plusflow_np21 using btree (fromcomid) with (fillfactor=75);
--rollback drop index nhdplus.i12fromcomid;

--changeset drsteini:create_index.nhdplus.i556nhdplus_regi runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i556nhdplus_regi' and c.relkind = 'i'
create index i556nhdplus_regi on nhdplus.plusflow_np21 using btree (nhdplus_region) with (fillfactor=75);
--rollback drop index nhdplus.i556nhdplus_regi;

--changeset drsteini:create_index.nhdplus.i973tocomid runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'i973tocomid' and c.relkind = 'i'
create index i973tocomid on nhdplus.plusflow_np21 using btree (tocomid) with (fillfactor=75);
--rollback drop index nhdplus.i973tocomid;

--changeset drsteini:create_index.nhdplus.r43_sde_rowid_uk runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'r43_sde_rowid_uk' and c.relkind = 'i'
create unique index r43_sde_rowid_uk on nhdplus.plusflow_np21 using btree (objectid) with (fillfactor=60);
--rollback drop index nhdplus.r43_sde_rowid_uk;

--changeset drsteini:create_index.nhdplus.catchmentsp_the_geom_geom_idx runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'catchmentsp_the_geom_geom_idx' and c.relkind = 'i'
create index catchmentsp_the_geom_geom_idx on nhdplus.catchmentsp using gist (the_geom);
--rollback drop index nhdplus.catchmentsp_the_geom_geom_idx;

--changeset drsteini:create_index.nhdplus.catchmentsp_featureid runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'catchmentsp_featureid' and c.relkind = 'i'
create index catchmentsp_featureid on nhdplus.catchmentsp(featureid);
--rollback drop index nhdplus.catchmentsp_featureid;

--changeset drsteini:create_index.nhdplus.plusflowlinevaa_np21_dnhydroseq runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'plusflowlinevaa_np21_dnhydroseq' and c.relkind = 'i'
create index plusflowlinevaa_np21_dnhydroseq on nhdplus.plusflowlinevaa_np21(dnhydroseq);
--rollback drop index nhdplus.plusflowlinevaa_np21_dnhydroseq;

--changeset drsteini:create_index.nhdplus.plusflowline_vaa_np21_ut runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'plusflowlinevaa_np21_ut' and c.relkind = 'i'
create index plusflowlinevaa_np21_ut on nhdplus.plusflowlinevaa_np21(dnhydroseq, pathlength, comid, hydroseq, startflag);
--rollback drop index nhdplus.plusflowlinevaa_np21_ut;

--changeset drsteini:create_index.nhdplus.plusflowline_vaa_np21_ut_or runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from pg_class c join pg_namespace n on n.oid = c.relnamespace where n.nspname = 'nhdplus' and c.relname = 'plusflowlinevaa_np21_ut_or' and c.relkind = 'i'
create index plusflowlinevaa_np21_ut_or on nhdplus.plusflowlinevaa_np21(dnminorhyd, pathlength, comid, hydroseq, startflag);
--rollback drop index nhdplus.plusflowlinevaa_np21_ut_or;
