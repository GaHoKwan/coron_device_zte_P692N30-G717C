.class Ltmsdkobf/kp$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/kp;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yF:Ltmsdkobf/kp;


# direct methods
.method constructor <init>(Ltmsdkobf/kp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 176
    iput-object p1, p0, Ltmsdkobf/kp$1;->yF:Ltmsdkobf/kp;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Ltmsdkobf/kp$1;->yF:Ltmsdkobf/kp;

    invoke-static {v0}, Ltmsdkobf/kp;->b(Ltmsdkobf/kp;)Ltmsdkobf/kn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Ltmsdkobf/kp$1;->yF:Ltmsdkobf/kp;

    invoke-static {v0}, Ltmsdkobf/kp;->b(Ltmsdkobf/kp;)Ltmsdkobf/kn;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/kp$1;->yF:Ltmsdkobf/kp;

    invoke-interface {v0, v1}, Ltmsdkobf/kn;->a(Ltmsdkobf/kp;)V

    .line 182
    :cond_0
    iget-object v0, p0, Ltmsdkobf/kp$1;->yF:Ltmsdkobf/kp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltmsdkobf/kp;->a(Ltmsdkobf/kp;Z)Z

    .line 183
    return-void
.end method
