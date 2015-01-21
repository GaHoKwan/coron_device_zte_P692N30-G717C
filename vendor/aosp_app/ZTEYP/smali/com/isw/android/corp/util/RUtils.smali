.class public Lcom/isw/android/corp/util/RUtils;
.super Ljava/lang/Object;
.source "RUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isw/android/corp/util/RUtils$drawable;,
        Lcom/isw/android/corp/util/RUtils$id;,
        Lcom/isw/android/corp/util/RUtils$layout;,
        Lcom/isw/android/corp/util/RUtils$string;
    }
.end annotation


# static fields
.field private static packnameString:Ljava/lang/String;

.field private static resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    sput-object v0, Lcom/isw/android/corp/util/RUtils;->resources:Landroid/content/res/Resources;

    .line 125
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/util/RUtils;->packnameString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDrawable(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 133
    sget-object v0, Lcom/isw/android/corp/util/RUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "drawable"

    sget-object v2, Lcom/isw/android/corp/util/RUtils;->packnameString:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getId(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 137
    sget-object v0, Lcom/isw/android/corp/util/RUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "id"

    sget-object v2, Lcom/isw/android/corp/util/RUtils;->packnameString:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getLayout(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 141
    sget-object v0, Lcom/isw/android/corp/util/RUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "layout"

    sget-object v2, Lcom/isw/android/corp/util/RUtils;->packnameString:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getString(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 145
    sget-object v0, Lcom/isw/android/corp/util/RUtils;->resources:Landroid/content/res/Resources;

    const-string v1, "string"

    sget-object v2, Lcom/isw/android/corp/util/RUtils;->packnameString:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0
    .parameter "r"
    .parameter "pkgname"

    .prologue
    .line 149
    sput-object p0, Lcom/isw/android/corp/util/RUtils;->resources:Landroid/content/res/Resources;

    .line 150
    sput-object p1, Lcom/isw/android/corp/util/RUtils;->packnameString:Ljava/lang/String;

    .line 151
    return-void
.end method
