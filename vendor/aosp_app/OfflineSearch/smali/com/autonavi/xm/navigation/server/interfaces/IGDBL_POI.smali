.class public interface abstract Lcom/autonavi/xm/navigation/server/interfaces/IGDBL_POI;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_ADMIN_NAME_LEN:I = 0x40

.field public static final MAX_CANDIDATE_NUM:I = 0xa

.field public static final MAX_CANDIDATE_WORD_LEN:I = 0x10

.field public static final MAX_CLASS_NAME_LEN:I = 0x40

.field public static final MAX_KEYWORD_LEN:I = 0x14

.field public static final MAX_POI_ADDR_LEN:I = 0x40

.field public static final MAX_POI_NAME_LEN:I = 0x40

.field public static final MAX_POI_TEL_LEN:I = 0x20


# virtual methods
.method public abstract GDBL_FreePOIGateInfo([Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_FreeRelationshipPOI([Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_FreeSettAreaInfo([Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetAdareaList(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaList;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetAdminCode(Lcom/autonavi/xm/navigation/server/poi/GCoordTel;[I)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetCandidateList(Lcom/autonavi/xm/navigation/server/poi/GCandidateCondition;[Lcom/autonavi/xm/navigation/server/poi/GCandidateList;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetNearestPOI([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetPOICategoryList(I[Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetPOIGateInfo(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GPoiGateInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetPOIResult(Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/xm/navigation/server/poi/GPoiResult;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetRelationshipPOI(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GRelationshipPoi;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_GetSettAreaInfo(Lcom/autonavi/xm/navigation/server/poi/GPoi;[Lcom/autonavi/xm/navigation/server/poi/GSettAreaInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_RequestNearestPOI(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_SearchAdareaInfo(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_SetCurAdarea(Lcom/autonavi/xm/navigation/server/poi/GAdareaType;I)Lcom/autonavi/xm/navigation/server/GStatus;
.end method

.method public abstract GDBL_StartSearchPOI(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;
.end method
