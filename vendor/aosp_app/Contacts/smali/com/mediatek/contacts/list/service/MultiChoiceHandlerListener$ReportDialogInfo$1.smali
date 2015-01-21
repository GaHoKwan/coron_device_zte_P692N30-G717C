.class final Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo$1;
.super Ljava/lang/Object;
.source "MultiChoiceHandlerListener.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
    .locals 2
    .parameter "in"

    .prologue
    .line 487
    new-instance v0, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    invoke-direct {v0}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;-><init>()V

    .line 488
    .local v0, values:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTitleId:I
    invoke-static {v0, v1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$002(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mContentId:I
    invoke-static {v0, v1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$102(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mJobId:I
    invoke-static {v0, v1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$502(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mErrorCauseId:I
    invoke-static {v0, v1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$602(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mTotalNumber:I
    invoke-static {v0, v1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$202(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mSucceededNumber:I
    invoke-static {v0, v1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$302(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->mFailedNumber:I
    invoke-static {v0, v1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;->access$402(Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;I)I

    .line 495
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 500
    new-array v0, p1, [Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo$1;->newArray(I)[Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener$ReportDialogInfo;

    move-result-object v0

    return-object v0
.end method
