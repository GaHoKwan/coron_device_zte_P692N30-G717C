.class public Lcom/android/mipop/paintpad/a/i;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/android/mipop/paintpad/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static n(I)Lcom/android/mipop/paintpad/a/b;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/android/mipop/paintpad/a/h;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/a/h;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/a/i;->h:Lcom/android/mipop/paintpad/a/b;

    :goto_0
    sget-object v0, Lcom/android/mipop/paintpad/a/i;->h:Lcom/android/mipop/paintpad/a/b;

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/android/mipop/paintpad/a/d;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/a/d;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/a/i;->h:Lcom/android/mipop/paintpad/a/b;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/mipop/paintpad/a/f;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/a/f;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/a/i;->h:Lcom/android/mipop/paintpad/a/b;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/mipop/paintpad/a/a;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/a/a;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/a/i;->h:Lcom/android/mipop/paintpad/a/b;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/mipop/paintpad/a/c;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/a/c;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/a/i;->h:Lcom/android/mipop/paintpad/a/b;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/mipop/paintpad/a/h;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/a/h;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/a/i;->h:Lcom/android/mipop/paintpad/a/b;

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/mipop/paintpad/a/j;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/a/j;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/a/i;->h:Lcom/android/mipop/paintpad/a/b;

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/android/mipop/paintpad/a/g;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/a/g;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/a/i;->h:Lcom/android/mipop/paintpad/a/b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
