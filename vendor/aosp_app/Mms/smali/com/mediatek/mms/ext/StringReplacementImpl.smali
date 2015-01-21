.class public Lcom/mediatek/mms/ext/StringReplacementImpl;
.super Landroid/content/ContextWrapper;
.source "StringReplacementImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IStringReplacement;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/StringReplacementImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getCTStrings(I)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 61
    const-string v0, "Mms/StringReplacementImpl"

    const-string v1, "StringReplacementImpl.getCTStrings"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSaveLocationString()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    const-string v0, "Mms/StringReplacementImpl"

    const-string v1, "StringReplacementImpl.getSaveLocationString"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnableStringReplacement()Z
    .locals 2

    .prologue
    .line 51
    const-string v0, "Mms/StringReplacementImpl"

    const-string v1, "isEnableStringReplacement(): false"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    return v0
.end method
