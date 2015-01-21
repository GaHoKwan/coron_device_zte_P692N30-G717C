.class public abstract Ldy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lbd;

.field protected final a:Leh;


# direct methods
.method constructor <init>(Lbd;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ldy;->a:Lbd;

    .line 43
    new-instance v0, Leh;

    invoke-direct {v0, p1}, Leh;-><init>(Lbd;)V

    iput-object v0, p0, Ldy;->a:Leh;

    .line 44
    return-void
.end method

.method public static a(Lbd;)Ldy;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p0, v1}, Lbd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ldv;

    invoke-direct {v0, p0}, Ldv;-><init>(Lbd;)V

    .line 77
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lbd;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ldz;

    invoke-direct {v0, p0}, Ldz;-><init>(Lbd;)V

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, v1, v0}, Leh;->a(Lbd;II)I

    move-result v0

    .line 57
    packed-switch v0, :pswitch_data_0

    .line 62
    const/4 v0, 0x5

    invoke-static {p0, v1, v0}, Leh;->a(Lbd;II)I

    move-result v0

    .line 63
    packed-switch v0, :pswitch_data_1

    .line 68
    const/4 v0, 0x7

    invoke-static {p0, v1, v0}, Leh;->a(Lbd;II)I

    move-result v0

    .line 69
    packed-switch v0, :pswitch_data_2

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unknown decoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_0
    new-instance v0, Ldp;

    invoke-direct {v0, p0}, Ldp;-><init>(Lbd;)V

    goto :goto_0

    .line 59
    :pswitch_1
    new-instance v0, Ldq;

    invoke-direct {v0, p0}, Ldq;-><init>(Lbd;)V

    goto :goto_0

    .line 64
    :pswitch_2
    new-instance v0, Ldr;

    invoke-direct {v0, p0}, Ldr;-><init>(Lbd;)V

    goto :goto_0

    .line 65
    :pswitch_3
    new-instance v0, Lds;

    invoke-direct {v0, p0}, Lds;-><init>(Lbd;)V

    goto :goto_0

    .line 70
    :pswitch_4
    new-instance v0, Ldt;

    const-string v1, "310"

    const-string v2, "11"

    invoke-direct {v0, p0, v1, v2}, Ldt;-><init>(Lbd;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_5
    new-instance v0, Ldt;

    const-string v1, "320"

    const-string v2, "11"

    invoke-direct {v0, p0, v1, v2}, Ldt;-><init>(Lbd;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_6
    new-instance v0, Ldt;

    const-string v1, "310"

    const-string v2, "13"

    invoke-direct {v0, p0, v1, v2}, Ldt;-><init>(Lbd;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_7
    new-instance v0, Ldt;

    const-string v1, "320"

    const-string v2, "13"

    invoke-direct {v0, p0, v1, v2}, Ldt;-><init>(Lbd;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_8
    new-instance v0, Ldt;

    const-string v1, "310"

    const-string v2, "15"

    invoke-direct {v0, p0, v1, v2}, Ldt;-><init>(Lbd;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :pswitch_9
    new-instance v0, Ldt;

    const-string v1, "320"

    const-string v2, "15"

    invoke-direct {v0, p0, v1, v2}, Ldt;-><init>(Lbd;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :pswitch_a
    new-instance v0, Ldt;

    const-string v1, "310"

    const-string v2, "17"

    invoke-direct {v0, p0, v1, v2}, Ldt;-><init>(Lbd;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :pswitch_b
    new-instance v0, Ldt;

    const-string v1, "320"

    const-string v2, "17"

    invoke-direct {v0, p0, v1, v2}, Ldt;-><init>(Lbd;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 63
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 69
    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
