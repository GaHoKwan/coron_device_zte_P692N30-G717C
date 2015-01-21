.class public Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
.super Ljava/lang/Object;
.source "MultiChoiceHandlerListener.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportDialogInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentId:I

.field private mErrorCauseId:I

.field private mFailedNumber:I

.field private mJobId:I

.field private mSucceededNumber:I

.field private mTitleId:I

.field private mTotalNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 485
    new-instance v0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo$1;

    invoke-direct {v0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mErrorCauseId:I

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 459
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTitleId:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 459
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTitleId:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 459
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mContentId:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 459
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mContentId:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 459
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTotalNumber:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 459
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTotalNumber:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 459
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mSucceededNumber:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 459
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mSucceededNumber:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 459
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mFailedNumber:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 459
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mFailedNumber:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 459
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mJobId:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 459
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mJobId:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 459
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mErrorCauseId:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 459
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mErrorCauseId:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public getmContentId()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mContentId:I

    return v0
.end method

.method public getmErrorCauseId()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mErrorCauseId:I

    return v0
.end method

.method public getmFailedNumber()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mFailedNumber:I

    return v0
.end method

.method public getmJobId()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mJobId:I

    return v0
.end method

.method public getmSucceededNumber()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mSucceededNumber:I

    return v0
.end method

.method public getmTitleId()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTitleId:I

    return v0
.end method

.method public getmTotalNumber()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTotalNumber:I

    return v0
.end method

.method public setmContentId(I)V
    .locals 0
    .parameter "contentId"

    .prologue
    .line 517
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mContentId:I

    .line 518
    return-void
.end method

.method public setmErrorCauseId(I)V
    .locals 0
    .parameter "errorCauseId"

    .prologue
    .line 533
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mErrorCauseId:I

    .line 534
    return-void
.end method

.method public setmFailedNumber(I)V
    .locals 0
    .parameter "failedNumber"

    .prologue
    .line 557
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mFailedNumber:I

    .line 558
    return-void
.end method

.method public setmJobId(I)V
    .locals 0
    .parameter "jobId"

    .prologue
    .line 525
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mJobId:I

    .line 526
    return-void
.end method

.method public setmSucceededNumber(I)V
    .locals 0
    .parameter "succeededNumber"

    .prologue
    .line 549
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mSucceededNumber:I

    .line 550
    return-void
.end method

.method public setmTitleId(I)V
    .locals 0
    .parameter "titleId"

    .prologue
    .line 509
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTitleId:I

    .line 510
    return-void
.end method

.method public setmTotalNumber(I)V
    .locals 0
    .parameter "totalNumber"

    .prologue
    .line 541
    iput p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTotalNumber:I

    .line 542
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 476
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTitleId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mContentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mJobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mErrorCauseId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTotalNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mSucceededNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mFailedNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    return-void
.end method
