.class public Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;
.super Ljava/lang/Exception;
.source "USIMUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "USIMGroupException"
.end annotation


# static fields
.field public static final ERROR_STR_GRP_COUNT_OUTOFBOUND:Ljava/lang/String; = "Group count out of bound"

.field public static final ERROR_STR_GRP_NAME_OUTOFBOUND:Ljava/lang/String; = "Group name out of bound"

.field public static final GROUP_NAME_OUT_OF_BOUND:I = 0x1

.field public static final GROUP_NUMBER_OUT_OF_BOUND:I = 0x2

.field public static final USIM_ERROR_GROUP_COUNT:I = -0x14

.field public static final USIM_ERROR_NAME_LEN:I = -0xa

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mErrorType:I

.field mSlotId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 630
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 637
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "msg"
    .parameter "errorType"
    .parameter "slotId"

    .prologue
    .line 649
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 650
    iput p2, p0, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;->mErrorType:I

    .line 651
    iput p3, p0, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;->mSlotId:I

    .line 652
    return-void
.end method


# virtual methods
.method public getErrorSlotId()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;->mSlotId:I

    return v0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;->mErrorType:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Details message: errorType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;->mErrorType:I

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
