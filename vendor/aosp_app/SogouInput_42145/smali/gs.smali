.class public Lgs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(I)I
    .locals 2
    .parameter

    .prologue
    const/16 v0, 0x3e80

    const/4 v1, 0x0

    .line 16
    .line 18
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 41
    :goto_0
    :pswitch_1
    return v0

    .line 20
    :pswitch_2
    const/16 v0, 0x1f40

    .line 21
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 34
    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
