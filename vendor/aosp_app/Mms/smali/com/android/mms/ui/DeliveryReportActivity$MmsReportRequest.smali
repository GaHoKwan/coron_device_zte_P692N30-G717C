.class public final Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;
.super Ljava/lang/Object;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeliveryReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsReportRequest"
.end annotation


# instance fields
.field private final mIsDeliveryReportRequsted:Z

.field private final mIsReadReportRequested:Z

.field private final mRecipient:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 4
    .parameter "recipient"
    .parameter "drValue"
    .parameter "rrValue"

    .prologue
    const/16 v3, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p1, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mRecipient:Ljava/lang/String;

    .line 456
    if-ne p2, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mIsDeliveryReportRequsted:Z

    .line 457
    if-ne p3, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mIsReadReportRequested:Z

    .line 458
    return-void

    :cond_0
    move v0, v2

    .line 456
    goto :goto_0

    :cond_1
    move v1, v2

    .line 457
    goto :goto_1
.end method


# virtual methods
.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public isDeliveryReportRequested()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mIsDeliveryReportRequsted:Z

    return v0
.end method

.method public isReadReportRequested()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->mIsReadReportRequested:Z

    return v0
.end method
