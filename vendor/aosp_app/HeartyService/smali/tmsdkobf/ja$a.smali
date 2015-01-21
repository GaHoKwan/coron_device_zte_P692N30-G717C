.class Ltmsdkobf/ja$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ltmsdkobf/ja$a;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic sP:Ltmsdkobf/ja;

.field private sQ:Ltmsdkobf/ky$c;


# direct methods
.method public constructor <init>(Ltmsdkobf/ja;ILjava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter "priority"
    .parameter "task"
    .parameter "taskName"
    .parameter "ident"
    .parameter "isWeak"
    .parameter "owner"

    .prologue
    .line 711
    iput-object p1, p0, Ltmsdkobf/ja$a;->sP:Ltmsdkobf/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    new-instance v0, Ltmsdkobf/ky$c;

    invoke-direct {v0}, Ltmsdkobf/ky$c;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    .line 714
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 715
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    .line 718
    :cond_1
    iget-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    const/4 v1, 0x1

    iput v1, v0, Ltmsdkobf/ky$c;->Bn:I

    .line 719
    iget-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    iput p2, v0, Ltmsdkobf/ky$c;->priority:I

    .line 720
    iget-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    iput-object p4, v0, Ltmsdkobf/ky$c;->name:Ljava/lang/String;

    .line 721
    iget-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    iput-wide p5, v0, Ltmsdkobf/ky$c;->Bo:J

    .line 722
    iget-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    iput-object p3, v0, Ltmsdkobf/ky$c;->Bs:Ljava/lang/Runnable;

    .line 723
    iget-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    iput-boolean p7, v0, Ltmsdkobf/ky$c;->Br:Z

    .line 724
    iget-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    iput-object p8, v0, Ltmsdkobf/ky$c;->Bt:Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/ky$c;->Bp:J

    .line 726
    return-void
.end method


# virtual methods
.method public a(Ltmsdkobf/ja$a;)I
    .locals 8
    .parameter "o"

    .prologue
    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    iget-wide v6, v6, Ltmsdkobf/ky$c;->Bp:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 746
    .local v2, waitingTime:J
    const-wide/16 v4, 0xc8

    div-long v4, v2, v4

    long-to-int v1, v4

    .line 747
    .local v1, extraPriority:I
    iget-object v4, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    iget v0, v4, Ltmsdkobf/ky$c;->priority:I

    .line 748
    .local v0, currentPriority:I
    if-lez v1, :cond_0

    .line 749
    add-int/2addr v0, v1

    .line 754
    :cond_0
    iget-object v4, p1, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    iget v4, v4, Ltmsdkobf/ky$c;->priority:I

    sub-int/2addr v4, v0

    return v4
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 706
    check-cast p1, Ltmsdkobf/ja$a;

    .end local p1
    invoke-virtual {p0, p1}, Ltmsdkobf/ja$a;->a(Ltmsdkobf/ja$a;)I

    move-result v0

    return v0
.end method

.method public dS()Ltmsdkobf/ky$c;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    iget-object v0, v0, Ltmsdkobf/ky$c;->Bs:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Ltmsdkobf/ja$a;->sQ:Ltmsdkobf/ky$c;

    iget-object v0, v0, Ltmsdkobf/ky$c;->Bs:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 737
    :cond_0
    return-void
.end method
