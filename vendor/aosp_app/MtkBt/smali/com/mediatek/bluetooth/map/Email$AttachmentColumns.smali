.class public Lcom/mediatek/bluetooth/map/Email$AttachmentColumns;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttachmentColumns"
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_BYTES:Ljava/lang/String; = "content_bytes"

.field public static final CONTENT_ID:Ljava/lang/String; = "contentId"

.field public static final CONTENT_URI:Ljava/lang/String; = "contentUri"

.field public static final ENCODING:Ljava/lang/String; = "encoding"

.field public static final FILENAME:Ljava/lang/String; = "fileName"

.field public static final FLAGS:Ljava/lang/String; = "flags"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final MESSAGE_KEY:Ljava/lang/String; = "messageKey"

.field public static final MIME_TYPE:Ljava/lang/String; = "mimeType"

.field public static final SIZE:Ljava/lang/String; = "size"


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/Email;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/Email;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/Email$AttachmentColumns;->this$0:Lcom/mediatek/bluetooth/map/Email;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
