.class public Lcom/mediatek/filemanager/utils/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final COLOR_ALPHA:I = 0x7fffffff

.field private static final THEME_COLOR_DEFAULT:I = 0x7f33b5e5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getThemeColor(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 13
    .local v0, themeColor:I
    invoke-static {}, Lcom/mediatek/filemanager/utils/OptionsUtils;->isMtkThemeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v0

    .line 15
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 18
    :cond_0
    if-nez v0, :cond_1

    .line 19
    const v0, 0x7f33b5e5

    .line 22
    :cond_1
    return v0
.end method
