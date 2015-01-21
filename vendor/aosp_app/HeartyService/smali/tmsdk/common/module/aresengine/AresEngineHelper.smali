.class public Ltmsdk/common/module/aresengine/AresEngineHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultMmsTransactionHelper(Landroid/content/Context;)Ltmsdk/common/module/aresengine/MmsTransactionHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 10
    new-instance v0, Ltmsdkobf/iu;

    invoke-direct {v0, p0}, Ltmsdkobf/iu;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
