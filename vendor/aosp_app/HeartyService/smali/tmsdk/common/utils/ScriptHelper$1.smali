.class final Ltmsdk/common/utils/ScriptHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot(Ltmsdk/common/utils/ScriptHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Er:Ltmsdk/common/utils/ScriptHelper$Callback;


# direct methods
.method constructor <init>(Ltmsdk/common/utils/ScriptHelper$Callback;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Ltmsdk/common/utils/ScriptHelper$1;->Er:Ltmsdk/common/utils/ScriptHelper$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Ltmsdk/common/utils/ScriptHelper$1;->Er:Ltmsdk/common/utils/ScriptHelper$Callback;

    const/4 v1, 0x1

    invoke-static {v1}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot(I)I

    move-result v1

    invoke-interface {v0, v1}, Ltmsdk/common/utils/ScriptHelper$Callback;->onFinish(I)V

    .line 141
    return-void
.end method
