.class public Lcom/android/contacts/model/account/BaseAccountType$PhoneActionAltInflater;
.super Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionAltInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0c0230

    .line 630
    if-nez p1, :cond_0

    .line 652
    :goto_0
    :pswitch_0
    return v0

    .line 631
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 652
    const v0, 0x7f0c0229

    goto :goto_0

    .line 632
    :pswitch_1
    const v0, 0x7f0c022a

    goto :goto_0

    .line 633
    :pswitch_2
    const v0, 0x7f0c022b

    goto :goto_0

    .line 634
    :pswitch_3
    const v0, 0x7f0c022c

    goto :goto_0

    .line 635
    :pswitch_4
    const v0, 0x7f0c022d

    goto :goto_0

    .line 636
    :pswitch_5
    const v0, 0x7f0c022e

    goto :goto_0

    .line 637
    :pswitch_6
    const v0, 0x7f0c022f

    goto :goto_0

    .line 639
    :pswitch_7
    const v0, 0x7f0c0231

    goto :goto_0

    .line 640
    :pswitch_8
    const v0, 0x7f0c0232

    goto :goto_0

    .line 641
    :pswitch_9
    const v0, 0x7f0c0233

    goto :goto_0

    .line 642
    :pswitch_a
    const v0, 0x7f0c0234

    goto :goto_0

    .line 643
    :pswitch_b
    const v0, 0x7f0c0235

    goto :goto_0

    .line 644
    :pswitch_c
    const v0, 0x7f0c0236

    goto :goto_0

    .line 645
    :pswitch_d
    const v0, 0x7f0c0237

    goto :goto_0

    .line 646
    :pswitch_e
    const v0, 0x7f0c0238

    goto :goto_0

    .line 647
    :pswitch_f
    const v0, 0x7f0c0239

    goto :goto_0

    .line 648
    :pswitch_10
    const v0, 0x7f0c023a

    goto :goto_0

    .line 649
    :pswitch_11
    const v0, 0x7f0c023b

    goto :goto_0

    .line 650
    :pswitch_12
    const v0, 0x7f0c023c

    goto :goto_0

    .line 651
    :pswitch_13
    const v0, 0x7f0c023d

    goto :goto_0

    .line 631
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
    .line 625
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
