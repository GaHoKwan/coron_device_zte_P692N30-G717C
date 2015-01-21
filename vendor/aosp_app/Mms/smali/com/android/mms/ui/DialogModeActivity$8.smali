.class Lcom/android/mms/ui/DialogModeActivity$8;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DialogModeActivity;->markAsSeen(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;

.field final synthetic val$uriArray:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2604
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$8;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iput-object p2, p0, Lcom/android/mms/ui/DialogModeActivity$8;->val$uriArray:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 2606
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2607
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2608
    iget-object v6, p0, Lcom/android/mms/ui/DialogModeActivity$8;->val$uriArray:[Ljava/lang/Object;

    .local v6, arr$:[Ljava/lang/Object;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v9, v6, v7

    .local v9, uriObject:Ljava/lang/Object;
    move-object v2, v9

    .line 2609
    check-cast v2, Landroid/net/Uri;

    .line 2610
    .local v2, uri:Landroid/net/Uri;
    const-string v0, "Mms/DialogMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "markasseen a:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$8;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DialogModeActivity$8;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2608
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2614
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #uriObject:Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$8;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    const-wide/16 v4, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v4, v5, v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2616
    return-void
.end method
