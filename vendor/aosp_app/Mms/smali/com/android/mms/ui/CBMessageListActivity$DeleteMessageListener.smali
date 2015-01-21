.class public Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "CBMessageListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CBMessageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteMessageListener"
.end annotation


# static fields
.field private static mDeleteLockedMessages:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeleteUri:Landroid/net/Uri;

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private final mMessageId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->mDeleteLockedMessages:Z

    return-void
.end method

.method public constructor <init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 1
    .parameter "messageId"
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput-wide p1, p0, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->mMessageId:J

    .line 657
    iput-object p3, p0, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 658
    iput-object p4, p0, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->mContext:Landroid/content/Context;

    .line 659
    sget-object v0, Lcom/android/mms/ui/CBMessageListActivity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 660
    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 648
    sget-boolean v0, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->mDeleteLockedMessages:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->mHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x76e

    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 663
    sput-boolean p1, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->mDeleteLockedMessages:Z

    .line 664
    return-void
.end method
