.class Lcom/android/mms/ui/ImageData;
.super Ljava/lang/Object;
.source "UriImage.java"


# instance fields
.field public mDegree:I

.field public mFilePath:Ljava/lang/String;

.field public mImageUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "filePath"
    .parameter "imageUri"
    .parameter "degree"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/mms/ui/ImageData;->mFilePath:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/android/mms/ui/ImageData;->mImageUri:Ljava/lang/String;

    .line 66
    iput p3, p0, Lcom/android/mms/ui/ImageData;->mDegree:I

    .line 67
    return-void
.end method
