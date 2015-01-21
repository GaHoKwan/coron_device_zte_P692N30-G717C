.class public Lcom/mediatek/bluetooth/map/Email$AccountColumns;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountColumns"
.end annotation


# static fields
.field public static final COMPATIBILITY_UUID:Ljava/lang/String; = "compatibilityUuid"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final FLAGS:Ljava/lang/String; = "flags"

.field public static final HOST_AUTH_KEY_RECV:Ljava/lang/String; = "hostAuthKeyRecv"

.field public static final HOST_AUTH_KEY_SEND:Ljava/lang/String; = "hostAuthKeySend"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final NEW_MESSAGE_COUNT:Ljava/lang/String; = "newMessageCount"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "protocolVersion"

.field public static final RINGTONE_URI:Ljava/lang/String; = "ringtoneUri"

.field public static final SECURITY_FLAGS:Ljava/lang/String; = "securityFlags"

.field public static final SECURITY_SYNC_KEY:Ljava/lang/String; = "securitySyncKey"

.field public static final SENDER_NAME:Ljava/lang/String; = "senderName"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SYNC_INTERVAL:Ljava/lang/String; = "syncInterval"

.field public static final SYNC_KEY:Ljava/lang/String; = "syncKey"

.field public static final SYNC_LOOKBACK:Ljava/lang/String; = "syncLookback"


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/Email;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/Email;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/Email$AccountColumns;->this$0:Lcom/mediatek/bluetooth/map/Email;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
