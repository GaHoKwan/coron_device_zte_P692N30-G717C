.class Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "WPMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/WPMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private mMode:Landroid/view/ActionMode;

.field private final mMsgIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/WPMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/WPMessageActivity;Ljava/util/HashSet;Landroid/content/AsyncQueryHandler;Landroid/content/Context;Landroid/view/ActionMode;)V
    .locals 0
    .parameter
    .parameter
    .parameter "handler"
    .parameter "context"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            "Landroid/content/Context;",
            "Landroid/view/ActionMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, msgIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p2, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mMsgIds:Ljava/util/HashSet;

    .line 277
    iput-object p3, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 278
    iput-object p4, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mContext:Landroid/content/Context;

    .line 279
    iput-object p5, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mMode:Landroid/view/ActionMode;

    .line 280
    return-void
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mHandler:Landroid/content/AsyncQueryHandler;

    instance-of v0, v0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mHandler:Landroid/content/AsyncQueryHandler;

    check-cast v0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/DeleteProgressDialogUtil;->getProgressDialog(Landroid/content/Context;)Lcom/android/mms/ui/NewProgressDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->setProgressDialog(Lcom/android/mms/ui/NewProgressDialog;)V

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mHandler:Landroid/content/AsyncQueryHandler;

    check-cast v0, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;->showProgressDialog()V

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v1, 0x25e4

    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 291
    iput-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mMode:Landroid/view/ActionMode;

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->showProgressDialog()V

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mMsgIds:Ljava/util/HashSet;

    if-nez v0, :cond_2

    .line 296
    sget-object v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    .line 297
    .local v3, deleteUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/WPMessageActivity;->access$100(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 308
    .end local v3           #deleteUri:Landroid/net/Uri;
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 309
    return-void

    .line 300
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/WPMessageActivity;->access$202(I)I

    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mMsgIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 302
    .local v11, msgId:J
    invoke-static {}, Lcom/android/mms/ui/WPMessageActivity;->access$208()I

    .line 303
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 304
    .restart local v3       #deleteUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/WPMessageActivity;->access$100(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    move-result-object v4

    iget-object v6, p0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;->mMsgIds:Ljava/util/HashSet;

    move v5, v1

    move-object v7, v3

    move-object v8, v2

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
