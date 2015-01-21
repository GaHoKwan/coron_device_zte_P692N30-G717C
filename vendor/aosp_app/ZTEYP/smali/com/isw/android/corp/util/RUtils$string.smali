.class public final Lcom/isw/android/corp/util/RUtils$string;
.super Ljava/lang/Object;
.source "RUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isw/android/corp/util/RUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final isw_about:I

.field public static final isw_app_full_name:I

.field public static final isw_app_name:I

.field public static final isw_callhistory_title:I

.field public static final isw_callout:I

.field public static final isw_cancel:I

.field public static final isw_channel:I

.field public static final isw_confirm:I

.field public static final isw_confirm_del_all_records:I

.field public static final isw_confirm_del_one_record:I

.field public static final isw_copyright:I

.field public static final isw_del_all_records:I

.field public static final isw_del_one_record:I

.field public static final isw_imsi:I

.field public static final isw_no:I

.field public static final isw_setting:I

.field public static final isw_showcc_off:I

.field public static final isw_showcc_on:I

.field public static final isw_tip:I

.field public static final isw_unknow_number:I

.field public static final isw_version:I

.field public static final isw_web_url:I

.field public static final isw_yes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "isw_about"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_about:I

    .line 100
    const-string v0, "isw_app_full_name"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_app_full_name:I

    .line 101
    const-string v0, "isw_app_name"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_app_name:I

    .line 102
    const-string v0, "isw_callhistory_title"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_callhistory_title:I

    .line 103
    const-string v0, "isw_callout"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_callout:I

    .line 104
    const-string v0, "isw_cancel"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_cancel:I

    .line 105
    const-string v0, "isw_channel"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_channel:I

    .line 106
    const-string v0, "isw_confirm"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_confirm:I

    .line 107
    const-string v0, "isw_confirm_del_all_records"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_confirm_del_all_records:I

    .line 108
    const-string v0, "isw_confirm_del_one_record"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_confirm_del_one_record:I

    .line 109
    const-string v0, "isw_copyright"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_copyright:I

    .line 110
    const-string v0, "isw_del_all_records"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_del_all_records:I

    .line 111
    const-string v0, "isw_del_one_record"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_del_one_record:I

    .line 112
    const-string v0, "isw_imsi"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_imsi:I

    .line 113
    const-string v0, "isw_no"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_no:I

    .line 114
    const-string v0, "isw_setting"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_setting:I

    .line 115
    const-string v0, "isw_showcc_off"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_showcc_off:I

    .line 116
    const-string v0, "isw_showcc_on"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_showcc_on:I

    .line 117
    const-string v0, "isw_tip"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_tip:I

    .line 118
    const-string v0, "isw_unknow_number"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_unknow_number:I

    .line 119
    const-string v0, "isw_version"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_version:I

    .line 120
    const-string v0, "isw_web_url"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_web_url:I

    .line 121
    const-string v0, "isw_yes"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$string;->isw_yes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
