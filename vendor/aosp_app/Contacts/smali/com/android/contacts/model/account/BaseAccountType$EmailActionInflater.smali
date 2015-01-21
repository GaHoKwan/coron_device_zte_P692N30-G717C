.class public Lcom/android/contacts/model/account/BaseAccountType$EmailActionInflater;
.super Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 660
    if-nez p1, :cond_0

    const v0, 0x7f0c0244

    .line 666
    :goto_0
    return v0

    .line 661
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 666
    const v0, 0x7f0c0243

    goto :goto_0

    .line 662
    :pswitch_0
    const v0, 0x7f0c023f

    goto :goto_0

    .line 663
    :pswitch_1
    const v0, 0x7f0c0241

    goto :goto_0

    .line 664
    :pswitch_2
    const v0, 0x7f0c0242

    goto :goto_0

    .line 665
    :pswitch_3
    const v0, 0x7f0c0240

    goto :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
