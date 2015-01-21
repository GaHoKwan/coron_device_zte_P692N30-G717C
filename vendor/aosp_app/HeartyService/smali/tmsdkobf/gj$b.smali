.class final Ltmsdkobf/gj$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic nz:Ltmsdkobf/gj;


# direct methods
.method private constructor <init>(Ltmsdkobf/gj;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltmsdkobf/gj;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 788
    invoke-direct {p0, p1}, Ltmsdkobf/gj$b;-><init>(Ltmsdkobf/gj;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 790
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 792
    :sswitch_0
    iget-object v1, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltmsdkobf/gi$b;

    invoke-static {v1, v0}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;Ltmsdkobf/gi$b;)V

    goto :goto_0

    .line 795
    :sswitch_1
    iget-object v1, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltmsdkobf/gh$b;

    invoke-static {v1, v0}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;Ltmsdkobf/gh$b;)V

    goto :goto_0

    .line 798
    :sswitch_2
    iget-object v1, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltmsdkobf/gk$b;

    invoke-static {v1, v0}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;Ltmsdkobf/gk$b;)V

    goto :goto_0

    .line 801
    :sswitch_3
    iget-object v0, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;I)V

    goto :goto_0

    .line 804
    :sswitch_4
    iget-object v0, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Ltmsdkobf/gj;->b(Ltmsdkobf/gj;I)V

    goto :goto_0

    .line 807
    :sswitch_5
    iget-object v1, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v0}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;Landroid/location/Location;)V

    goto :goto_0

    .line 810
    :sswitch_6
    const-string v0, "Network Recovery."

    invoke-static {v0}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    invoke-static {v0}, Ltmsdkobf/gj;->b(Ltmsdkobf/gj;)V

    goto :goto_0

    .line 814
    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 815
    iget-object v1, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Ltmsdkobf/gj;->a(Ltmsdkobf/gj;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    :cond_1
    iget-object v0, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    invoke-static {v0}, Ltmsdkobf/gj;->c(Ltmsdkobf/gj;)Ltmsdkobf/gi$b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    invoke-static {v0}, Ltmsdkobf/gj;->c(Ltmsdkobf/gj;)Ltmsdkobf/gi$b;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/gi$b;->S()Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    :cond_2
    iget-object v0, p0, Ltmsdkobf/gj$b;->nz:Ltmsdkobf/gj;

    invoke-static {v0}, Ltmsdkobf/gj;->d(Ltmsdkobf/gj;)V

    goto :goto_0

    .line 790
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x8 -> :sswitch_7
        0x100 -> :sswitch_6
    .end sparse-switch
.end method
