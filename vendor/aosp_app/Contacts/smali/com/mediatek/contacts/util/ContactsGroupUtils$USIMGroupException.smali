.class public Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
.super Ljava/lang/Exception;
.source "ContactsGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/util/ContactsGroupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "USIMGroupException"
.end annotation


# static fields
.field public static final ERROR_STR_GRP_COUNT_OUTOFBOUND:Ljava/lang/String; = "Group count out of bound"

.field public static final ERROR_STR_GRP_GENERIC_ERROR:Ljava/lang/String; = "Group generic error"

.field public static final ERROR_STR_GRP_NAME_OUTOFBOUND:Ljava/lang/String; = "Group name out of bound"

.field public static final GROUP_GENERIC_ERROR:I = 0x3

.field public static final GROUP_NAME_OUT_OF_BOUND:I = 0x1

.field public static final GROUP_NUMBER_OUT_OF_BOUND:I = 0x2

.field public static final GROUP_SIM_ABSENT:I = 0x4

.field public static final USIM_ERROR_GROUP_COUNT:I = -0x14

.field public static final USIM_ERROR_NAME_LEN:I = -0xa

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mErrorType:I

.field mSlotId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "msg"
    .parameter "errorType"
    .parameter "slotId"

    .prologue
    .line 610
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 611
    iput p2, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->mErrorType:I

    .line 612
    iput p3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->mSlotId:I

    .line 613
    return-void
.end method

.method public static getErrorToastId(I)I
    .locals 1
    .parameter "errorType"

    .prologue
    .line 631
    packed-switch p0, :pswitch_data_0

    .line 644
    :pswitch_0
    const v0, 0x7f0c004f

    .line 646
    .local v0, retMsgId:I
    :goto_0
    return v0

    .line 633
    .end local v0           #retMsgId:I
    :pswitch_1
    const v0, 0x7f0c0067

    .line 634
    .restart local v0       #retMsgId:I
    goto :goto_0

    .line 636
    .end local v0           #retMsgId:I
    :pswitch_2
    const v0, 0x7f0c0068

    .line 637
    .restart local v0       #retMsgId:I
    goto :goto_0

    .line 640
    .end local v0           #retMsgId:I
    :pswitch_3
    const v0, 0x7f0c002d

    .line 641
    .restart local v0       #retMsgId:I
    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getErrorSlotId()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->mSlotId:I

    return v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->mErrorType:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Details message: errorType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->mErrorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
