.class public Ltmsdkobf/mi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ltmsdkobf/m;)Ltmsdkobf/lx;
    .locals 3
    .parameter "cloudCmd"

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, instr:Ltmsdkobf/lx;
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Ltmsdkobf/m;->d()I

    move-result v1

    .line 20
    .local v1, instrType:I
    packed-switch v1, :pswitch_data_0

    .line 41
    .end local v1           #instrType:I
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Ltmsdkobf/m;->e()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ltmsdkobf/lx;->x([B)V

    .line 45
    :cond_1
    return-object v0

    .line 22
    .restart local v1       #instrType:I
    :pswitch_1
    new-instance v0, Ltmsdkobf/mc;

    .end local v0           #instr:Ltmsdkobf/lx;
    invoke-direct {v0, v1}, Ltmsdkobf/mc;-><init>(I)V

    .line 23
    .restart local v0       #instr:Ltmsdkobf/lx;
    goto :goto_0

    .line 25
    :pswitch_2
    new-instance v0, Ltmsdkobf/me;

    .end local v0           #instr:Ltmsdkobf/lx;
    invoke-direct {v0, v1}, Ltmsdkobf/me;-><init>(I)V

    .line 26
    .restart local v0       #instr:Ltmsdkobf/lx;
    goto :goto_0

    .line 28
    :pswitch_3
    new-instance v0, Ltmsdkobf/mh;

    .end local v0           #instr:Ltmsdkobf/lx;
    invoke-direct {v0, v1}, Ltmsdkobf/mh;-><init>(I)V

    .line 29
    .restart local v0       #instr:Ltmsdkobf/lx;
    goto :goto_0

    .line 31
    :pswitch_4
    new-instance v0, Ltmsdkobf/mk;

    .end local v0           #instr:Ltmsdkobf/lx;
    invoke-direct {v0, v1}, Ltmsdkobf/mk;-><init>(I)V

    .line 32
    .restart local v0       #instr:Ltmsdkobf/lx;
    goto :goto_0

    .line 34
    :pswitch_5
    new-instance v0, Ltmsdkobf/mm;

    .end local v0           #instr:Ltmsdkobf/lx;
    invoke-direct {v0, v1}, Ltmsdkobf/mm;-><init>(I)V

    .line 35
    .restart local v0       #instr:Ltmsdkobf/lx;
    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
