.class public Lcom/mediatek/omacp/message/OmacpMessageUtils;
.super Ljava/lang/Object;
.source "OmacpMessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/omacp/message/OmacpMessageUtils$1;,
        Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;
    }
.end annotation


# static fields
.field private static final APNTYPEBROWSER:I = 0x1

.field private static final APNTYPEMMS:I = 0x2

.field private static final APNTYPESUPL:I = 0x3

.field static final APN_APPID:Ljava/lang/String; = "apn"

.field static final BROWSER_APPID:Ljava/lang/String; = "w2"

.field private static final DEBUG:Z = true

.field static final DM_APPID:Ljava/lang/String; = "w7"

.field static final DS_APID:Ljava/lang/String; = "w5"

.field static final IMAP4_APPID:Ljava/lang/String; = "143"

.field static final IMPS_APPID:Ljava/lang/String; = "wA"

.field static final MMS_2_APPID:Ljava/lang/String; = "ap0005"

.field static final MMS_APPID:Ljava/lang/String; = "w4"

.field static final POP3_APPID:Ljava/lang/String; = "110"

.field static final RTSP_APPID:Ljava/lang/String; = "554"

.field static final SMTP_APPID:Ljava/lang/String; = "25"

.field static final SUPL_APPID:Ljava/lang/String; = "ap0004"

.field private static final TAG:Ljava/lang/String; = "Omacp/OmacpMessageUtils"

.field static sEmailAccountName:Ljava/lang/String;

.field static sEmailInboundType:Ljava/lang/String;

.field static sInboundEmailSetting:Ljava/lang/String;

.field static sOutboundEmailSetting:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailAccountName:Ljava/lang/String;

    .line 90
    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sInboundEmailSetting:Ljava/lang/String;

    .line 92
    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    .line 94
    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailInboundType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1211
    return-void
.end method

.method private static addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "spannableDetailInfo"
    .parameter "appId"

    .prologue
    const/16 v3, 0x11

    .line 464
    if-nez p1, :cond_0

    .line 465
    const-string v1, "Omacp/OmacpMessageUtils"

    const-string v2, "OmacpMessageUtils addApplicationLabel info is null."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 471
    .local v0, before:I
    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 472
    invoke-static {p0, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 473
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0xff01

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 475
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private static appendApplicationParams(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Landroid/text/SpannableStringBuilder;Ljava/lang/StringBuilder;)V
    .locals 8
    .parameter "context"
    .parameter "application"
    .parameter "spannableDetailInfo"
    .parameter "mmsSetting"

    .prologue
    .line 258
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "w2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    invoke-static {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getBrowserSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 260
    .local v0, browserInfo:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendSpanableDetailInfo(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V

    .line 287
    .end local v0           #browserInfo:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "w4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "ap0005"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 263
    invoke-static {p0, p1, p3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getMmsSettingsInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "w7"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 265
    invoke-static {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getDMSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 266
    .local v1, dmInfo:Landroid/text/SpannableStringBuilder;
    invoke-static {v1, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendSpanableDetailInfo(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 267
    .end local v1           #dmInfo:Landroid/text/SpannableStringBuilder;
    :cond_3
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "25"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "110"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "143"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 271
    :cond_4
    invoke-static {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getEmailSetting(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)V

    goto :goto_0

    .line 272
    :cond_5
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "554"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 273
    invoke-static {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getRtspSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 274
    .local v4, rtspInfo:Landroid/text/SpannableStringBuilder;
    invoke-static {v4, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendSpanableDetailInfo(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 275
    .end local v4           #rtspInfo:Landroid/text/SpannableStringBuilder;
    :cond_6
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "ap0004"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 276
    invoke-static {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getSuplSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 277
    .local v5, suplInfo:Landroid/text/SpannableStringBuilder;
    invoke-static {v5, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendSpanableDetailInfo(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 278
    .end local v5           #suplInfo:Landroid/text/SpannableStringBuilder;
    :cond_7
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "w5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 279
    invoke-static {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getDsSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 280
    .local v2, dsInfo:Landroid/text/SpannableStringBuilder;
    invoke-static {v2, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendSpanableDetailInfo(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 281
    .end local v2           #dsInfo:Landroid/text/SpannableStringBuilder;
    :cond_8
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v7, "wA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 282
    invoke-static {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getImpsSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 283
    .local v3, impsInfo:Landroid/text/SpannableStringBuilder;
    invoke-static {v3, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendSpanableDetailInfo(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 285
    .end local v3           #impsInfo:Landroid/text/SpannableStringBuilder;
    :cond_9
    const-string v6, "Omacp/OmacpMessageUtils"

    const-string v7, "OmacpMessageUtils getSettingsDetailInfo appid unknown."

    invoke-static {v6, v7}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static appendDmAddrSettingsInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "context"
    .parameter "application"
    .parameter "dmSettings"

    .prologue
    const v1, 0x7f050030

    const/4 v3, 0x0

    .line 1010
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1012
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmServerAddress:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1023
    const v0, 0x7f050050

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAddrType:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1030
    const v0, 0x7f050031

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmPortNumber:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    :cond_2
    return-void

    .line 1016
    :cond_3
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmServerAddress:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static appendDmAuthSettingsInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "context"
    .parameter "application"
    .parameter "dmSettings"

    .prologue
    .line 1038
    iget-object v1, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    .line 1039
    .local v0, auth:Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthlevel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1040
    const v1, 0x7f050051

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthLevel:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthlevel:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :cond_0
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthtype:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1044
    const v1, 0x7f050052

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthType:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthtype:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    :cond_1
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthname:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1048
    const v1, 0x7f050046

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthName:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthname:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :cond_2
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthsecret:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1052
    const v1, 0x7f050047

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthSecret:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthsecret:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    :cond_3
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthdata:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1056
    const v1, 0x7f050053

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmAuthData:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthdata:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    :cond_4
    return-void
.end method

.method private static appendDmIsSupport(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "context"
    .parameter "application"
    .parameter "dmSettings"

    .prologue
    .line 1063
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mInit:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1064
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    const v0, 0x7f050054

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmInit:Z

    if-nez v0, :cond_1

    .line 1067
    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mInit:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1070
    const v0, 0x7f050026

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1072
    :cond_2
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static appendDmSettingsInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "context"
    .parameter "application"
    .parameter "dmSettings"

    .prologue
    .line 992
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 993
    const v0, 0x7f05004e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmProviderId:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :cond_0
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 997
    const v0, 0x7f05004f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDmServerName:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendDmAddrSettingsInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V

    .line 1002
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1004
    invoke-static {p0, p1, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendDmAuthSettingsInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V

    .line 1006
    :cond_2
    return-void
.end method

.method private static appendEmailInfo(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .parameter "context"
    .parameter "spannableDetailInfo"

    .prologue
    const v5, 0x7f050040

    const/4 v4, 0x1

    const/16 v3, 0x11

    .line 338
    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sInboundEmailSetting:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 339
    :cond_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 340
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 342
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 344
    .local v0, before:I
    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 345
    const v1, 0x7f05001c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 346
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0xff01

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 348
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 350
    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmail:Z

    if-nez v1, :cond_4

    .line 351
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 352
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 384
    :cond_2
    :goto_0
    invoke-static {}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->resetEmailStaticSetting()V

    .line 386
    .end local v0           #before:I
    :cond_3
    return-void

    .line 355
    .restart local v0       #before:I
    :cond_4
    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailAccountName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 356
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 357
    const v1, 0x7f050034

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 358
    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailProviderId:Z

    if-nez v1, :cond_7

    .line 359
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 365
    :cond_5
    :goto_1
    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 366
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 368
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 369
    const v1, 0x7f05001d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 370
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 372
    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 375
    :cond_6
    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sInboundEmailSetting:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailInboundType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 376
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 377
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 378
    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailInboundType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 379
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 381
    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sInboundEmailSetting:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 361
    :cond_7
    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailAccountName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method

.method private static appendEmailOutBoundInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;Z)V
    .locals 3
    .parameter "context"
    .parameter "application"
    .parameter "emailInfo"
    .parameter "isOutbound"

    .prologue
    .line 563
    if-eqz p3, :cond_1

    .line 564
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mFrom:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 565
    const v0, 0x7f050057

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailFrom:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mFrom:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_0
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mRtAddr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 569
    const v0, 0x7f050058

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailRtAddr:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mRtAddr:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_1
    return-void
.end method

.method private static appendEmailServerInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;Z)V
    .locals 7
    .parameter "context"
    .parameter "application"
    .parameter "emailInfo"
    .parameter "isOutbound"

    .prologue
    const v1, 0x7f050030

    const/4 v6, 0x0

    .line 529
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 530
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundAddr:Z

    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundAddr:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v5, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getEmailElement(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 544
    const v0, 0x7f050031

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundPortNumber:Z

    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundPortNumber:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v5, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getEmailElement(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mService:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mService:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 553
    const v0, 0x7f050056

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundSecure:Z

    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundSecure:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mService:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getEmailElement(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_2
    return-void

    .line 535
    :cond_3
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundAddr:Z

    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundAddr:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getEmailElement(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static appendEmailUserInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;Z)V
    .locals 7
    .parameter "context"
    .parameter "application"
    .parameter "emailInfo"
    .parameter "isOutbound"

    .prologue
    const/4 v6, 0x0

    .line 505
    if-nez p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthname:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 510
    const v0, 0x7f050046

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundUserName:Z

    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundUserName:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v5, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthname:Ljava/lang/String;

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getEmailElement(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthsecret:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 517
    const v0, 0x7f050047

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundPassword:Z

    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailInboundPassword:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v5, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthsecret:Ljava/lang/String;

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getEmailElement(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static appendImpsServerAuthInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "context"
    .parameter "application"
    .parameter "impsSettings"

    .prologue
    .line 733
    iget-object v1, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    iget-object v1, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    .line 735
    .local v0, auth:Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthlevel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 736
    const v1, 0x7f050051

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAuthLevel:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthlevel:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :cond_0
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthname:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 742
    const v1, 0x7f050046

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAuthName:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthname:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    :cond_1
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthsecret:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 748
    const v1, 0x7f050047

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAuthSecret:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthsecret:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .end local v0           #auth:Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;
    :cond_2
    return-void
.end method

.method private static appendImpsServerBaseInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "context"
    .parameter "application"
    .parameter "impsSettings"

    .prologue
    const v4, 0x7f050030

    const/4 v3, 0x0

    .line 703
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 704
    const v0, 0x7f05004e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsProviderId:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_0
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 709
    const v0, 0x7f05004f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsServerName:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAaccept:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 714
    const v0, 0x7f05005c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsContentType:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAaccept:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    :cond_2
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 719
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsServerAddress:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :cond_3
    :goto_0
    return-void

    .line 723
    :cond_4
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 724
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsServerAddress:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static appendImpsServerInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "context"
    .parameter "application"
    .parameter "impsSettings"

    .prologue
    const/4 v3, 0x0

    .line 676
    invoke-static {p0, p1, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendImpsServerBaseInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V

    .line 678
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 679
    const v0, 0x7f050050

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsAddressType:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendImpsServerAuthInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V

    .line 687
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mServices:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 688
    const v0, 0x7f05005f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsServices:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mServices:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCidprefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 694
    const v0, 0x7f050060

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImpsClientIdPrefix:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCidprefix:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_2
    return-void
.end method

.method private static appendMmsInfo(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "context"
    .parameter "spannableDetailInfo"
    .parameter "mmsSetting"

    .prologue
    .line 390
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 391
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 392
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 394
    :cond_0
    const-string v0, "w4"

    invoke-static {p0, p1, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 395
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMms:Z

    if-nez v0, :cond_2

    .line 396
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 397
    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private static appendMmscProxyParams(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter "napSettings"
    .parameter "apnProxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    const/4 v6, 0x0

    .line 1254
    const/4 v0, 0x0

    .line 1255
    .local v0, mmsc:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1256
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1257
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v4, v4, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v5, "w4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v4, v4, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v5, "ap0005"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1259
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v4, v4, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v4, v4, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1260
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v4, v4, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mmsc:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1256
    .restart local v0       #mmsc:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1261
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v4, v4, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v4, v4, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v4, v4, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1263
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v4, v4, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v4, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    goto :goto_1

    .line 1268
    .end local v1           #n:I
    :cond_3
    if-eqz v0, :cond_5

    .line 1269
    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    const v4, 0x7f05002f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    iget-object v3, p3, Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;->mProxy:Ljava/lang/String;

    .line 1273
    .local v3, proxy:Ljava/lang/String;
    iget-object v2, p3, Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;->mPort:Ljava/lang/String;

    .line 1274
    .local v2, port:Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 1275
    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    const v4, 0x7f05003c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 1280
    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    const v4, 0x7f05003d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    .end local v2           #port:Ljava/lang/String;
    .end local v3           #proxy:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static appendSpanableDetailInfo(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .parameter "appInfo"
    .parameter "spannableDetailInfo"

    .prologue
    .line 291
    if-eqz p0, :cond_1

    .line 292
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 293
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 295
    :cond_0
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 297
    :cond_1
    return-void
.end method

.method private static checkApplicationProxy(Lcom/mediatek/omacp/parser/ProxyClass;Lcom/mediatek/omacp/parser/ApplicationClass;)I
    .locals 6
    .parameter "proxyClass"
    .parameter "applicationClass"

    .prologue
    const/4 v3, -0x1

    .line 1350
    iget-object v4, p0, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 1352
    iget-object v4, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mToProxy:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mToProxy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return v3

    .line 1355
    :cond_1
    iget-object v4, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mToProxy:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1356
    .local v1, toProxy:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/omacp/parser/ProxyClass;->mProxyId:Ljava/lang/String;

    .line 1357
    .local v2, toProxyId:Ljava/lang/String;
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    .line 1358
    .local v0, appId:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 1359
    const-string v4, "w4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ap0005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1360
    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    .line 1361
    :cond_3
    const-string v4, "w2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1362
    const/4 v3, 0x1

    goto :goto_0

    .line 1363
    :cond_4
    const-string v4, "ap0004"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1364
    const/4 v3, 0x3

    goto :goto_0
.end method

.method private static checkPxphysical(Lcom/mediatek/omacp/parser/ProxyClass;Lcom/mediatek/omacp/parser/NapdefClass;)Z
    .locals 5
    .parameter "proxyClass"
    .parameter "napdefClass"

    .prologue
    const/4 v4, 0x0

    .line 1334
    iget-object v3, p0, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1335
    iget-object v3, p0, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v2, v3, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mToNapid:Ljava/util/ArrayList;

    .line 1336
    .local v2, toNapIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 1346
    .end local v2           #toNapIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return v3

    .line 1339
    .restart local v2       #toNapIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, m:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1340
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1341
    .local v1, toNapId:Ljava/lang/String;
    iget-object v3, p1, Lcom/mediatek/omacp/parser/NapdefClass;->mNapid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1342
    const/4 v3, 0x1

    goto :goto_0

    .line 1339
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #m:I
    .end local v1           #toNapId:Ljava/lang/String;
    .end local v2           #toNapIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move v3, v4

    .line 1346
    goto :goto_0
.end method

.method private static getAPNBaseParams(Landroid/content/Context;Lcom/mediatek/omacp/parser/NapdefClass;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "napdefClass"
    .parameter "napSettings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mediatek/omacp/parser/NapdefClass;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    const/4 v1, 0x0

    .line 1184
    iget-object v0, p1, Lcom/mediatek/omacp/parser/NapdefClass;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1185
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    const v0, 0x7f050061

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    iget-object v0, p1, Lcom/mediatek/omacp/parser/NapdefClass;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    :cond_0
    iget-object v0, p1, Lcom/mediatek/omacp/parser/NapdefClass;->mNapaddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1191
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    const v0, 0x7f05003b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    iget-object v0, p1, Lcom/mediatek/omacp/parser/NapdefClass;->mNapaddress:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthname:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1198
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    const v0, 0x7f050046

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    iget-object v0, p1, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthname:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    :cond_2
    iget-object v0, p1, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthsecret:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1205
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    const v0, 0x7f050047

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    iget-object v0, p1, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthsecret:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    :cond_3
    return-void
.end method

.method private static getAPNProxyParams(Landroid/content/Context;Ljava/util/ArrayList;Lcom/mediatek/omacp/parser/NapdefClass;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter "napdefClass"
    .parameter "napSettings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ProxyClass;",
            ">;",
            "Lcom/mediatek/omacp/parser/NapdefClass;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ProxyClass;>;"
    .local p4, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    const/4 v8, 0x0

    .line 1220
    new-instance v4, Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;-><init>(Lcom/mediatek/omacp/message/OmacpMessageUtils$1;)V

    .line 1221
    .local v4, apnProxy:Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;
    const/4 v6, -0x1

    .local v6, apnType:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1222
    invoke-static/range {v0 .. v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getProxyClassParams(Landroid/content/Context;Ljava/util/ArrayList;Lcom/mediatek/omacp/parser/NapdefClass;Ljava/lang/StringBuilder;Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;Ljava/util/ArrayList;)I

    move-result v6

    .line 1223
    const/4 v7, 0x0

    .line 1226
    .local v7, apnTypeString:Ljava/lang/String;
    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 1227
    const-string v7, "default"

    .line 1238
    :goto_0
    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthtype:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1240
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthtype:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    :cond_0
    if-eqz v7, :cond_1

    .line 1246
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    const v0, 0x7f05003f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :cond_1
    return-void

    .line 1228
    :cond_2
    const/4 v0, 0x2

    if-ne v6, v0, :cond_3

    .line 1229
    invoke-static {p0, p4, p3, v4}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendMmscProxyParams(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;)V

    .line 1230
    const-string v7, "mms"

    goto :goto_0

    .line 1231
    :cond_3
    const/4 v0, 0x3

    if-ne v6, v0, :cond_4

    .line 1232
    const-string v7, "supl"

    goto :goto_0

    .line 1234
    :cond_4
    invoke-static {p4}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAPNType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static getAPNType(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1372
    .local p0, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    const/4 v0, 0x0

    .line 1373
    .local v0, apnType:Ljava/lang/String;
    if-eqz p0, :cond_8

    .line 1374
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 1375
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "w2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1376
    if-eqz v0, :cond_1

    .line 1377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1374
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1379
    :cond_1
    const-string v0, "default"

    goto :goto_1

    .line 1381
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "w4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "ap0005"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1384
    :cond_4
    if-eqz v0, :cond_5

    .line 1385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1387
    :cond_5
    const-string v0, "mms"

    goto :goto_1

    .line 1389
    :cond_6
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "ap0004"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1390
    if-eqz v0, :cond_7

    .line 1391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",supl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1393
    :cond_7
    const-string v0, "supl"

    goto :goto_1

    .line 1398
    .end local v1           #n:I
    :cond_8
    return-object v0
.end method

.method private static getApnSettingInfo(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/NapdefClass;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ProxyClass;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .line 1155
    .local p1, napList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/NapdefClass;>;"
    .local p2, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    .local p3, pxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ProxyClass;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1156
    :cond_0
    const-string v5, "Omacp/OmacpMessageUtils"

    const-string v6, "OmacpMessageUtils getApnSettingInfo napList is null or size is 0."

    invoke-static {v5, v6}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const/4 v0, 0x0

    .line 1178
    :cond_1
    return-object v0

    .line 1160
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1161
    .local v0, apnInfo:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1162
    .local v3, napSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    .local v2, napSettings:Ljava/lang/StringBuilder;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/NapdefClass;

    .line 1166
    .local v4, napdefClass:Lcom/mediatek/omacp/parser/NapdefClass;
    invoke-static {p0, v4, v2, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAPNBaseParams(Landroid/content/Context;Lcom/mediatek/omacp/parser/NapdefClass;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 1168
    invoke-static {p0, p3, v4, v2, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAPNProxyParams(Landroid/content/Context;Ljava/util/ArrayList;Lcom/mediatek/omacp/parser/NapdefClass;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 1169
    const-string v5, ""

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1170
    if-lez v1, :cond_3

    .line 1171
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1174
    :cond_3
    const-string v5, "apn"

    invoke-static {p0, v0, v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 1175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1162
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "appId"

    .prologue
    const v3, 0x7f050019

    const v2, 0x7f05001c

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, name:Ljava/lang/String;
    const-string v1, "w4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 154
    :cond_0
    const-string v1, "ap0005"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    const-string v1, "w2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    const v1, 0x7f05001a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_2
    const-string v1, "apn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    const v1, 0x7f05001b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_3
    const-string v1, "143"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_4
    const-string v1, "110"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 163
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_5
    const-string v1, "25"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 165
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_6
    const-string v1, "w7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 167
    const v1, 0x7f050020

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_7
    const-string v1, "ap0004"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 169
    const v1, 0x7f050021

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_8
    const-string v1, "554"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 171
    const v1, 0x7f050022

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 172
    :cond_9
    const-string v1, "w5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 173
    const v1, 0x7f050023

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 174
    :cond_a
    const-string v1, "wA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 175
    const v1, 0x7f050024

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :cond_b
    const-string v1, "Omacp/OmacpMessageUtils"

    const-string v2, "OmacpMessageUtils getAppName unknown app."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getBrowserSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;
    .locals 10
    .parameter "context"
    .parameter "application"

    .prologue
    const v9, 0x7f050040

    .line 1080
    if-nez p1, :cond_0

    .line 1081
    const-string v6, "Omacp/OmacpMessageUtils"

    const-string v7, "OmacpMessageUtils getBrowserSettingInfo application is null."

    invoke-static {v6, v7}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const/4 v0, 0x0

    .line 1149
    :goto_0
    return-object v0

    .line 1085
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1086
    .local v0, browserInfo:Landroid/text/SpannableStringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1087
    .local v1, browserSettings:Ljava/lang/StringBuilder;
    sget-boolean v6, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowser:Z

    if-nez v6, :cond_1

    .line 1088
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v0, v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 1089
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1090
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1093
    :cond_1
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1094
    const v6, 0x7f050042

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserBookMarkFolder:Z

    iget-object v8, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    invoke-static {p0, v6, v7, v8}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    :cond_2
    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mResource:Ljava/util/ArrayList;

    .line 1100
    .local v5, resourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$Resource;>;"
    const/4 v2, 0x0

    .line 1101
    .local v2, homePage:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 1102
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    .line 1103
    .local v4, resource:Lcom/mediatek/omacp/parser/ApplicationClass$Resource;
    iget-object v6, v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mUri:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1104
    iget-object v6, v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 1105
    const v6, 0x7f050045

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserBookMarkName:Z

    iget-object v8, v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mName:Ljava/lang/String;

    invoke-static {p0, v6, v7, v8}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    :cond_3
    const v6, 0x7f05002d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserBookMark:Z

    iget-object v8, v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mUri:Ljava/lang/String;

    invoke-static {p0, v6, v7, v8}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    iget-object v6, v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthname:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 1114
    const v6, 0x7f050046

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserUserName:Z

    iget-object v8, v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthname:Ljava/lang/String;

    invoke-static {p0, v6, v7, v8}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_4
    iget-object v6, v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthsecret:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 1119
    const v6, 0x7f050047

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserPassWord:Z

    iget-object v8, v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthsecret:Ljava/lang/String;

    invoke-static {p0, v6, v7, v8}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    :cond_5
    iget-object v6, v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mStartpage:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mStartpage:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1126
    if-nez v2, :cond_6

    .line 1127
    iget-object v2, v4, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mUri:Ljava/lang/String;

    .line 1101
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1132
    .end local v4           #resource:Lcom/mediatek/omacp/parser/ApplicationClass$Resource;
    :cond_7
    if-eqz v2, :cond_8

    .line 1133
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    const v6, 0x7f05002e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    sget-boolean v6, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sBrowserHomePage:Z

    if-nez v6, :cond_9

    .line 1136
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :cond_8
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 1142
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v0, v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 1138
    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1145
    :cond_a
    iget-object v6, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v0, v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 1146
    const v6, 0x7f050041

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0
.end method

.method private static getDMSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;
    .locals 4
    .parameter "context"
    .parameter "application"

    .prologue
    .line 967
    if-nez p1, :cond_1

    .line 968
    const-string v2, "Omacp/OmacpMessageUtils"

    const-string v3, "OmacpMessageUtils getDMSettingInfo application is null."

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const/4 v0, 0x0

    .line 987
    :cond_0
    :goto_0
    return-object v0

    .line 972
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 973
    .local v0, dmInfo:Landroid/text/SpannableStringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    .local v1, dmSettings:Ljava/lang/StringBuilder;
    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDm:Z

    if-nez v2, :cond_2

    .line 975
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 976
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 977
    const v2, 0x7f050040

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 980
    :cond_2
    invoke-static {p0, p1, v1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendDmSettingsInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V

    .line 981
    invoke-static {p0, p1, v1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendDmIsSupport(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V

    .line 982
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 983
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 984
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private static getDsAuthInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "context"
    .parameter "application"
    .parameter "settings"

    .prologue
    .line 821
    iget-object v1, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 822
    iget-object v1, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    .line 823
    .local v0, auth:Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthlevel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 824
    const v1, 0x7f050051

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthLevel:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthlevel:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_0
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthtype:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 829
    const v1, 0x7f050052

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthType:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthtype:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :cond_1
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthname:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 834
    const v1, 0x7f050046

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthName:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthname:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :cond_2
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthsecret:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 839
    const v1, 0x7f050047

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthSecret:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthsecret:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    :cond_3
    iget-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthdata:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 844
    const v1, 0x7f050053

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAuthData:Z

    iget-object v3, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthdata:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .end local v0           #auth:Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;
    :cond_4
    return-void
.end method

.method private static getDsResourceInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V
    .locals 7
    .parameter "context"
    .parameter "application"
    .parameter "settings"

    .prologue
    .line 852
    iget-object v3, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mResource:Ljava/util/ArrayList;

    .line 853
    .local v3, resourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$Resource;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 854
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    .line 856
    .local v2, resource:Lcom/mediatek/omacp/parser/ApplicationClass$Resource;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    .local v0, database:Ljava/lang/StringBuilder;
    iget-object v4, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mUri:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 860
    iget-object v4, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 861
    const v4, 0x7f05005a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseName:Z

    iget-object v6, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mName:Ljava/lang/String;

    invoke-static {p0, v4, v5, v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    :cond_0
    const v4, 0x7f05005b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseUrl:Z

    iget-object v6, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mUri:Ljava/lang/String;

    invoke-static {p0, v4, v5, v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    iget-object v4, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAaccept:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 872
    const v4, 0x7f05005c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseContentType:Z

    iget-object v6, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAaccept:Ljava/lang/String;

    invoke-static {p0, v4, v5, v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_1
    iget-object v4, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthtype:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 878
    const v4, 0x7f050052

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseAuthType:Z

    iget-object v6, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthtype:Ljava/lang/String;

    invoke-static {p0, v4, v5, v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :cond_2
    iget-object v4, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthname:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 884
    const v4, 0x7f050046

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseAuthName:Z

    iget-object v6, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthname:Ljava/lang/String;

    invoke-static {p0, v4, v5, v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_3
    iget-object v4, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthsecret:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 890
    const v4, 0x7f050047

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsDatabaseAuthSecret:Z

    iget-object v6, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthsecret:Ljava/lang/String;

    invoke-static {p0, v4, v5, v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_4
    iget-object v4, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mCliuri:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 895
    const v4, 0x7f05005d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsClientDatabaseUrl:Z

    iget-object v6, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mCliuri:Ljava/lang/String;

    invoke-static {p0, v4, v5, v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    :cond_5
    iget-object v4, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mSynctype:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 901
    const v4, 0x7f05005e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsSyncType:Z

    iget-object v6, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mSynctype:Ljava/lang/String;

    invoke-static {p0, v4, v5, v6}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 906
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 853
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 910
    .end local v0           #database:Ljava/lang/StringBuilder;
    .end local v2           #resource:Lcom/mediatek/omacp/parser/ApplicationClass$Resource;
    :cond_8
    return-void
.end method

.method private static getDsServerInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "context"
    .parameter "application"
    .parameter "settings"

    .prologue
    const v4, 0x7f050030

    const/4 v3, 0x0

    .line 786
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 787
    const v0, 0x7f05004f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsServerName:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_0
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 792
    const v0, 0x7f05004e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplProviderId:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 797
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsServerAddress:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 805
    const v0, 0x7f050050

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsAddressType:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    :cond_3
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 813
    const v0, 0x7f050031

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsPortNumber:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_4
    return-void

    .line 799
    :cond_5
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 800
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDsServerAddress:Z

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static getDsSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;
    .locals 4
    .parameter "context"
    .parameter "application"

    .prologue
    .line 756
    if-nez p1, :cond_1

    .line 757
    const-string v2, "Omacp/OmacpMessageUtils"

    const-string v3, "OmacpMessageUtils getDsSettingInfo application is null."

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v1, 0x0

    .line 779
    :cond_0
    :goto_0
    return-object v1

    .line 761
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 762
    .local v1, info:Landroid/text/SpannableStringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    .local v0, dsSettings:Ljava/lang/StringBuilder;
    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sDs:Z

    if-nez v2, :cond_2

    .line 764
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 765
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 766
    const v2, 0x7f050040

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 770
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getDsServerInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V

    .line 772
    invoke-static {p0, p1, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getDsAuthInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V

    .line 774
    invoke-static {p0, p1, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getDsResourceInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 776
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 777
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private static getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "label"
    .parameter "capability"
    .parameter "value"

    .prologue
    .line 452
    const-string v0, "\n"

    .line 453
    .local v0, element:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    if-nez p2, :cond_0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f050040

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_0
    return-object v0

    .line 457
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getEmailElement(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "label"
    .parameter "outCapability"
    .parameter "inCapability"
    .parameter "isOutbound"
    .parameter "value"

    .prologue
    const v2, 0x7f050040

    .line 578
    const-string v0, "\n"

    .line 579
    .local v0, element:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    if-eqz p4, :cond_1

    .line 581
    if-eqz p2, :cond_0

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    .line 584
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 587
    :cond_1
    if-eqz p3, :cond_2

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getEmailSetting(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)V
    .locals 2
    .parameter "context"
    .parameter "application"

    .prologue
    .line 300
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 301
    sget-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailAccountName:Ljava/lang/String;

    .line 304
    :cond_0
    sget-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    invoke-static {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getEmailSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    .line 308
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f050035

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    .line 313
    sget-boolean v0, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailOutboundAuthType:Z

    if-nez v0, :cond_3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f050040

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    goto :goto_0

    .line 315
    :cond_3
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthtype:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f050036

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    goto/16 :goto_0

    .line 319
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f050037

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    goto/16 :goto_0

    .line 322
    :cond_5
    sget-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailAccountName:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 323
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailAccountName:Ljava/lang/String;

    .line 325
    :cond_6
    sget-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailInboundType:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v1, "110"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 326
    const v0, 0x7f05001e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailInboundType:Ljava/lang/String;

    .line 331
    :cond_7
    :goto_1
    sget-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sInboundEmailSetting:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 332
    invoke-static {p0, p1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getEmailSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sInboundEmailSetting:Ljava/lang/String;

    goto/16 :goto_0

    .line 327
    :cond_8
    sget-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailInboundType:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v1, "143"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 329
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailInboundType:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getEmailSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "application"

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    const-string v2, "Omacp/OmacpMessageUtils"

    const-string v3, "OmacpMessageUtils getEmailInboundSettingInfo application is null."

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v2, 0x0

    .line 500
    :goto_0
    return-object v2

    .line 484
    :cond_0
    const/4 v1, 0x0

    .line 485
    .local v1, isOutbound:Z
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v3, "25"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    const/4 v1, 0x1

    .line 488
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .local v0, emailInfo:Ljava/lang/StringBuilder;
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 490
    const v2, 0x7f050055

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sEmailSettingName:Z

    iget-object v4, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    invoke-static {p0, v2, v3, v4}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_2
    invoke-static {p0, p1, v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendEmailUserInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;Z)V

    .line 497
    invoke-static {p0, p1, v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendEmailServerInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;Z)V

    .line 499
    invoke-static {p0, p1, v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendEmailOutBoundInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;Z)V

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getImpsSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;
    .locals 4
    .parameter "context"
    .parameter "application"

    .prologue
    .line 652
    if-nez p1, :cond_1

    .line 653
    const-string v2, "Omacp/OmacpMessageUtils"

    const-string v3, "OmacpMessageUtils getDsSettingInfo application is null."

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const/4 v0, 0x0

    .line 670
    :cond_0
    :goto_0
    return-object v0

    .line 657
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 658
    .local v0, impsInfo:Landroid/text/SpannableStringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .local v1, impsSettings:Ljava/lang/StringBuilder;
    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sImps:Z

    if-nez v2, :cond_2

    .line 660
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 661
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 662
    const v2, 0x7f050040

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 664
    :cond_2
    invoke-static {p0, p1, v1}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendImpsServerInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V

    .line 665
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 666
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private static getMmsSettingsInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "context"
    .parameter "application"
    .parameter "mmsSetting"

    .prologue
    .line 406
    if-nez p1, :cond_1

    .line 407
    const-string v0, "Omacp/OmacpMessageUtils"

    const-string v1, "OmacpMessageUtils addMmsSettingsInfo application is null."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v1, "w4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 413
    const-string v0, "Omacp/OmacpMessageUtils"

    const-string v1, "OmacpMessageUtils invalid w4 mms setting."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_2
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v1, "ap0005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mRm:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMs:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mPcAddr:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMa:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 421
    const-string v0, "Omacp/OmacpMessageUtils"

    const-string v1, "OmacpMessageUtils invalid ap0005 mms setting."

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_3
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 426
    const v0, 0x7f050049

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsCm:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_4
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mRm:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 431
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsRm:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mRm:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_5
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMs:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 436
    const v0, 0x7f05004b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsMs:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMs:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_6
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mPcAddr:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 441
    const v0, 0x7f05004c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsPcAddr:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mPcAddr:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_7
    iget-object v0, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMa:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 446
    const v0, 0x7f05004d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sMmsMa:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMa:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static getOneValidApplicationNameSet(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass;

    .line 123
    .local v1, application:Lcom/mediatek/omacp/parser/ApplicationClass;
    iget-object v0, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    .line 124
    .local v0, appId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 125
    .local v2, name:Ljava/lang/String;
    iget-object v3, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v4, "25"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v4, "110"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v4, "143"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    :cond_0
    const v3, 0x7f05001c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_2
    return-void

    .line 129
    :cond_3
    iget-object v3, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v4, "w4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    iget-object v3, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 132
    invoke-static {p0, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 134
    :cond_4
    iget-object v3, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    const-string v4, "ap0005"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 135
    iget-object v3, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mRm:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMs:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mPcAddr:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMa:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 139
    :cond_5
    invoke-static {p0, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 143
    :cond_6
    invoke-static {p0, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getProxyClassParams(Landroid/content/Context;Ljava/util/ArrayList;Lcom/mediatek/omacp/parser/NapdefClass;Ljava/lang/StringBuilder;Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;Ljava/util/ArrayList;)I
    .locals 10
    .parameter "context"
    .parameter
    .parameter "napdefClass"
    .parameter "napSettings"
    .parameter "apnProxy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ProxyClass;",
            ">;",
            "Lcom/mediatek/omacp/parser/NapdefClass;",
            "Ljava/lang/StringBuilder;",
            "Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, pxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ProxyClass;>;"
    .local p5, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    const/4 v9, 0x2

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 1289
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v0, v6

    .line 1330
    :cond_1
    :goto_0
    return v0

    .line 1292
    :cond_2
    const/4 v5, 0x0

    .line 1293
    .local v5, proxyClass:Lcom/mediatek/omacp/parser/ProxyClass;
    const/4 v3, 0x0

    .line 1294
    .local v3, flag:Z
    const/4 v0, -0x1

    .line 1295
    .local v0, apnType:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 1296
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #proxyClass:Lcom/mediatek/omacp/parser/ProxyClass;
    check-cast v5, Lcom/mediatek/omacp/parser/ProxyClass;

    .line 1297
    .restart local v5       #proxyClass:Lcom/mediatek/omacp/parser/ProxyClass;
    invoke-static {v5, p2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->checkPxphysical(Lcom/mediatek/omacp/parser/ProxyClass;Lcom/mediatek/omacp/parser/NapdefClass;)Z

    move-result v3

    .line 1298
    if-eqz v3, :cond_7

    .line 1302
    :cond_3
    if-eqz v3, :cond_4

    .line 1303
    const/4 v1, 0x0

    .local v1, appIndex:I
    :goto_2
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 1304
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass;

    .line 1305
    .local v2, applicationClass:Lcom/mediatek/omacp/parser/ApplicationClass;
    invoke-static {v5, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->checkApplicationProxy(Lcom/mediatek/omacp/parser/ProxyClass;Lcom/mediatek/omacp/parser/ApplicationClass;)I

    move-result v0

    .line 1306
    if-eq v0, v6, :cond_8

    .line 1311
    .end local v1           #appIndex:I
    .end local v2           #applicationClass:Lcom/mediatek/omacp/parser/ApplicationClass;
    :cond_4
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    .line 1312
    iget-object v6, v5, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1313
    iget-object v6, v5, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v6, v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddr:Ljava/lang/String;

    if-eqz v6, :cond_5

    if-eq v0, v9, :cond_5

    .line 1314
    const-string v6, "\n"

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    const v6, 0x7f050043

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    iget-object v6, v5, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v6, v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddr:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :cond_5
    iget-object v6, v5, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v6, v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddr:Ljava/lang/String;

    iput-object v6, p4, Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;->mProxy:Ljava/lang/String;

    .line 1320
    iget-object v6, v5, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v6, v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1321
    iget-object v6, v5, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v6, v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v6, v6, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    if-eqz v6, :cond_6

    if-eq v0, v9, :cond_6

    .line 1322
    const-string v6, "\n"

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    const v6, 0x7f050031

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    iget-object v6, v5, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v6, v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v6, v6, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    :cond_6
    iget-object v6, v5, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v6, v6, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v6, v6, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    iput-object v6, p4, Lcom/mediatek/omacp/message/OmacpMessageUtils$ApnProxyParam;->mPort:Ljava/lang/String;

    goto/16 :goto_0

    .line 1295
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1303
    .restart local v1       #appIndex:I
    .restart local v2       #applicationClass:Lcom/mediatek/omacp/parser/ApplicationClass;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method private static getRtspSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .parameter "context"
    .parameter "application"

    .prologue
    .line 598
    if-nez p1, :cond_1

    .line 599
    const-string v3, "Omacp/OmacpMessageUtils"

    const-string v4, "OmacpMessageUtils getRtspSettingInfo application is null."

    invoke-static {v3, v4}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/4 v1, 0x0

    .line 647
    :cond_0
    :goto_0
    return-object v1

    .line 602
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 603
    .local v1, rtspInfo:Landroid/text/SpannableStringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v2, rtspSettings:Ljava/lang/StringBuilder;
    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtsp:Z

    if-nez v3, :cond_2

    .line 605
    iget-object v3, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 606
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 607
    const v3, 0x7f050040

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 610
    :cond_2
    iget-object v3, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 611
    const v3, 0x7f05004e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspProviderId:Z

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_3
    iget-object v3, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 617
    const v3, 0x7f050061

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspName:Z

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :cond_4
    iget-object v3, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMaxBandwidth:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 621
    const v3, 0x7f050059

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspMaxBandwidth:Z

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMaxBandwidth:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_5
    iget-object v3, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mNetinfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 626
    const/4 v0, 0x0

    .local v0, p:I
    :goto_1
    iget-object v3, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mNetinfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 627
    const v3, 0x7f050038

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspNetInfo:Z

    iget-object v3, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mNetinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v4, v5, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 632
    .end local v0           #p:I
    :cond_6
    iget-object v3, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMaxUdpPort:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 633
    const v3, 0x7f050039

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspMaxUdpPort:Z

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMaxUdpPort:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_7
    iget-object v3, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMinUdpPort:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 638
    const v3, 0x7f05003a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sRtspMinUdpPort:Z

    iget-object v5, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mMinUdpPort:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 643
    iget-object v3, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0
.end method

.method public static getSettingsDetailInfo(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/NapdefClass;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ProxyClass;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    .local p2, napList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/NapdefClass;>;"
    .local p3, pxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ProxyClass;>;"
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 223
    .local v5, spannableDetailInfo:Landroid/text/SpannableStringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v3, mmsSetting:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 226
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 227
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass;

    .line 229
    .local v1, application:Lcom/mediatek/omacp/parser/ApplicationClass;
    const-string v6, "Omacp/OmacpMessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OmacpMessageUtils getSettingsDetailInfo application is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {p0, v1, v5, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendApplicationParams(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;Landroid/text/SpannableStringBuilder;Ljava/lang/StringBuilder;)V

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v1           #application:Lcom/mediatek/omacp/parser/ApplicationClass;
    :cond_0
    invoke-static {p0, v5, v3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendMmsInfo(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/StringBuilder;)V

    .line 238
    invoke-static {p0, v5}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->appendEmailInfo(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)V

    .line 240
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_1
    if-eqz p2, :cond_3

    .line 241
    invoke-static {p0, p2, p1, p3}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getApnSettingInfo(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 242
    .local v0, apnInfo:Landroid/text/SpannableStringBuilder;
    if-eqz v0, :cond_3

    .line 243
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 244
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 246
    :cond_2
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 250
    .end local v0           #apnInfo:Landroid/text/SpannableStringBuilder;
    :cond_3
    const-string v6, "Omacp/OmacpMessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OmacpMessageUtils getSettingsDetailInfo info is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/omacp/utils/MTKlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-object v5
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "savedSummary"

    .prologue
    const v9, 0x7f050015

    const/4 v8, 0x0

    .line 184
    const-string v5, "Omacp/OmacpMessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OmacpMessageUtils savedSummary is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, summary:Ljava/lang/String;
    move-object v1, p1

    .line 189
    .local v1, messageSavedSummary:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 190
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 191
    .local v3, sep:I
    const/4 v0, 0x0

    .line 192
    .local v0, appId:Ljava/lang/String;
    if-ltz v3, :cond_0

    .line 193
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-le v5, v6, :cond_1

    .line 196
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    :goto_1
    invoke-static {p0, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 198
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 209
    .end local v0           #appId:Ljava/lang/String;
    .end local v3           #sep:I
    :cond_2
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    const-string v5, "Omacp/OmacpMessageUtils"

    const-string v6, "OmacpMessageUtils summary is null."

    invoke-static {v5, v6}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v4, 0x0

    .line 216
    :goto_2
    return-object v4

    .line 213
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private static getSuplSettingInfo(Landroid/content/Context;Lcom/mediatek/omacp/parser/ApplicationClass;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .parameter "context"
    .parameter "application"

    .prologue
    const v6, 0x7f050030

    const/4 v5, 0x0

    .line 914
    if-nez p1, :cond_1

    .line 915
    const-string v2, "Omacp/OmacpMessageUtils"

    const-string v3, "OmacpMessageUtils getSuplSettingInfo application is null."

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const/4 v0, 0x0

    .line 962
    :cond_0
    :goto_0
    return-object v0

    .line 919
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 920
    .local v0, suplInfo:Landroid/text/SpannableStringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    .local v1, suplSettings:Ljava/lang/StringBuilder;
    sget-boolean v2, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSupl:Z

    if-nez v2, :cond_2

    .line 922
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 923
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 924
    const v2, 0x7f050040

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 927
    :cond_2
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 928
    const v2, 0x7f05004e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplProviderId:Z

    iget-object v4, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    invoke-static {p0, v2, v3, v4}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    :cond_3
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 934
    const v2, 0x7f05004f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplServerName:Z

    iget-object v4, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    invoke-static {p0, v2, v3, v4}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    :cond_4
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 939
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplServerAddr:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    :cond_5
    :goto_1
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 951
    const v2, 0x7f050050

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplAddrType:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 958
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->addApplicationLabel(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 943
    :cond_7
    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 944
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/omacp/message/OmacpApplicationCapability;->sSuplServerAddr:Z

    iget-object v2, p1, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getElement(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getValidApplicationNameSet(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/NapdefClass;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    .local p2, napList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/NapdefClass;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 108
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 109
    invoke-static {p0, p1, v1, v0}, Lcom/mediatek/omacp/message/OmacpMessageUtils;->getOneValidApplicationNameSet(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    const v3, 0x7f05001b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1
    return-object v1
.end method

.method private static resetEmailStaticSetting()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1402
    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailAccountName:Ljava/lang/String;

    .line 1403
    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sInboundEmailSetting:Ljava/lang/String;

    .line 1404
    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sOutboundEmailSetting:Ljava/lang/String;

    .line 1405
    sput-object v0, Lcom/mediatek/omacp/message/OmacpMessageUtils;->sEmailInboundType:Ljava/lang/String;

    .line 1406
    return-void
.end method
