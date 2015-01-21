.class public Lcom/android/contacts/model/account/BaseAccountType$PhoneActionInflater;
.super Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0c021b

    .line 595
    if-nez p1, :cond_0

    .line 617
    :goto_0
    :pswitch_0
    return v0

    .line 596
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 617
    const v0, 0x7f0c0214

    goto :goto_0

    .line 597
    :pswitch_1
    const v0, 0x7f0c0215

    goto :goto_0

    .line 598
    :pswitch_2
    const v0, 0x7f0c0216

    goto :goto_0

    .line 599
    :pswitch_3
    const v0, 0x7f0c0217

    goto :goto_0

    .line 600
    :pswitch_4
    const v0, 0x7f0c0218

    goto :goto_0

    .line 601
    :pswitch_5
    const v0, 0x7f0c0219

    goto :goto_0

    .line 602
    :pswitch_6
    const v0, 0x7f0c021a

    goto :goto_0

    .line 604
    :pswitch_7
    const v0, 0x7f0c021c

    goto :goto_0

    .line 605
    :pswitch_8
    const v0, 0x7f0c021d

    goto :goto_0

    .line 606
    :pswitch_9
    const v0, 0x7f0c021e

    goto :goto_0

    .line 607
    :pswitch_a
    const v0, 0x7f0c021f

    goto :goto_0

    .line 608
    :pswitch_b
    const v0, 0x7f0c0220

    goto :goto_0

    .line 609
    :pswitch_c
    const v0, 0x7f0c0221

    goto :goto_0

    .line 610
    :pswitch_d
    const v0, 0x7f0c0222

    goto :goto_0

    .line 611
    :pswitch_e
    const v0, 0x7f0c0223

    goto :goto_0

    .line 612
    :pswitch_f
    const v0, 0x7f0c0224

    goto :goto_0

    .line 613
    :pswitch_10
    const v0, 0x7f0c0225

    goto :goto_0

    .line 614
    :pswitch_11
    const v0, 0x7f0c0226

    goto :goto_0

    .line 615
    :pswitch_12
    const v0, 0x7f0c0227

    goto :goto_0

    .line 616
    :pswitch_13
    const v0, 0x7f0c0228

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 590
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
