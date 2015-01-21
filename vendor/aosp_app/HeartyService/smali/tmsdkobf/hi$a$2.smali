.class Ltmsdkobf/hi$a$2;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hi$a;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pA:Ltmsdkobf/hi$a;


# direct methods
.method constructor <init>(Ltmsdkobf/hi$a;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Ltmsdkobf/hi$a$2;->pA:Ltmsdkobf/hi$a;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 155
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 156
    iget-object v0, p0, Ltmsdkobf/hi$a$2;->pA:Ltmsdkobf/hi$a;

    invoke-static {v0}, Ltmsdkobf/hi$a;->b(Ltmsdkobf/hi$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "null"

    .end local p2
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    return-void
.end method
