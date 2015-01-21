.class Lcom/android/wifidirect/test/VcardFileHandler$VCardFile;
.super Ljava/lang/Object;
.source "VcardFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/VcardFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VCardFile"
.end annotation


# instance fields
.field private mCanonicalPath:Ljava/lang/String;

.field private mLastModified:J

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/wifidirect/test/VcardFileHandler;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/VcardFileHandler;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "canonicalPath"
    .parameter "lastModified"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardFile;->this$0:Lcom/android/wifidirect/test/VcardFileHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardFile;->mName:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardFile;->mCanonicalPath:Ljava/lang/String;

    .line 121
    iput-wide p4, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardFile;->mLastModified:J

    .line 122
    return-void
.end method


# virtual methods
.method public getCanonicalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardFile;->mCanonicalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardFile;->mLastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/wifidirect/test/VcardFileHandler$VCardFile;->mName:Ljava/lang/String;

    return-object v0
.end method
