.class public Lcom/android/mms/util/PduLoaderManager$PduLoaded;
.super Ljava/lang/Object;
.source "PduLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/PduLoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PduLoaded"
.end annotation


# instance fields
.field public final mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field public final mSlideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/GenericPdu;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "pdu"
    .parameter "slideshow"

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 232
    iput-object p2, p0, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 233
    return-void
.end method
