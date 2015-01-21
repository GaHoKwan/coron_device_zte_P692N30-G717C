.class public final Lcom/isw/android/corp/util/RUtils$layout;
.super Ljava/lang/Object;
.source "RUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isw/android/corp/util/RUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final isw_about:I

.field public static final isw_callhistory_main:I

.field public static final isw_ccshow_company_style:I

.field public static final isw_ccshow_company_style_xf1:I

.field public static final isw_ccshow_company_style_xf2:I

.field public static final isw_ccshow_mini_style:I

.field public static final isw_listview_item:I

.field public static final isw_push_view:I

.field public static final isw_setting:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "isw_about"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$layout;->isw_about:I

    .line 88
    const-string v0, "isw_callhistory_main"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$layout;->isw_callhistory_main:I

    .line 89
    const-string v0, "isw_ccshow_company_style"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$layout;->isw_ccshow_company_style:I

    .line 90
    const-string v0, "isw_ccshow_company_style_xf1"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$layout;->isw_ccshow_company_style_xf1:I

    .line 91
    const-string v0, "isw_ccshow_company_style_xf2"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$layout;->isw_ccshow_company_style_xf2:I

    .line 92
    const-string v0, "isw_ccshow_mini_style"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$layout;->isw_ccshow_mini_style:I

    .line 93
    const-string v0, "isw_listview_item"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$layout;->isw_listview_item:I

    .line 94
    const-string v0, "isw_push_view"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$layout;->isw_push_view:I

    .line 95
    const-string v0, "isw_setting"

    invoke-static {v0}, Lcom/isw/android/corp/util/RUtils;->getLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/isw/android/corp/util/RUtils$layout;->isw_setting:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
