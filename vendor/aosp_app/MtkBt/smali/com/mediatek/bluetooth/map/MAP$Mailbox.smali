.class Lcom/mediatek/bluetooth/map/MAP$Mailbox;
.super Ljava/lang/Object;
.source "MAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/MAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Mailbox"
.end annotation


# static fields
.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DRAFT:Ljava/lang/String; = "draft"

.field public static final INBOX:Ljava/lang/String; = "inbox"

.field public static final MSG:Ljava/lang/String; = "msg"

.field public static final OUTBOX:Ljava/lang/String; = "outbox"

.field public static final SENT:Ljava/lang/String; = "sent"

.field public static final TELECOM:Ljava/lang/String; = "telecom"


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/MAP;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/MAP;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/MAP$Mailbox;->this$0:Lcom/mediatek/bluetooth/map/MAP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
