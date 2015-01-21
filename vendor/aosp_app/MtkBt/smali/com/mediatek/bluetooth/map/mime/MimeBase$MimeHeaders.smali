.class public Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;
.super Ljava/lang/Object;
.source "MimeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/mime/MimeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimeHeaders"
.end annotation


# instance fields
.field public mBcc:Ljava/lang/String;

.field public mCc:Ljava/lang/String;

.field public mFrom:Ljava/lang/String;

.field public mId:J

.field public mMiltipartType:Ljava/lang/String;

.field public mMsgId:Ljava/lang/String;

.field public mReplyTo:Ljava/lang/String;

.field public mSize:J

.field public mSubject:Ljava/lang/String;

.field public mTimeStamp:J

.field public mTo:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/bluetooth/map/mime/MimeBase;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/mime/MimeBase;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->this$0:Lcom/mediatek/bluetooth/map/mime/MimeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
