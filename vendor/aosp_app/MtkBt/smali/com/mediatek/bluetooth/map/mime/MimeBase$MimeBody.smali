.class public Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;
.super Ljava/lang/Object;
.source "MimeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/mime/MimeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimeBody"
.end annotation


# instance fields
.field public mHtmlContent:Ljava/lang/String;

.field public mHtmlReply:Ljava/lang/String;

.field public mIntroText:Ljava/lang/String;

.field public mTextContent:Ljava/lang/String;

.field public mTextReply:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/bluetooth/map/mime/MimeBase;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/mime/MimeBase;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;->this$0:Lcom/mediatek/bluetooth/map/mime/MimeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
