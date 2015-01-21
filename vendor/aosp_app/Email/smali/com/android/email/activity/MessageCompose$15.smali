.class final Lcom/android/email/activity/MessageCompose$15;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->safeAddAddressesAsync([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$addrList:Ljava/util/ArrayList;

.field final synthetic val$addrs:[Lcom/android/emailcommon/mail/Address;

.field final synthetic val$ourAddress:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/MultiAutoCompleteTextView;


# direct methods
.method constructor <init>([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;Ljava/util/ArrayList;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3046
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$15;->val$addrs:[Lcom/android/emailcommon/mail/Address;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$15;->val$ourAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/activity/MessageCompose$15;->val$addrList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/email/activity/MessageCompose$15;->val$view:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 3049
    const/4 v2, 0x0

    .line 3050
    .local v2, count:I
    const/16 v8, 0xa

    .line 3052
    .local v8, requestNumToSleep:I
    new-instance v7, Lcom/android/ex/chips/MTKRecipientList;

    invoke-direct {v7}, Lcom/android/ex/chips/MTKRecipientList;-><init>()V

    .line 3053
    .local v7, recipientList:Lcom/android/ex/chips/MTKRecipientList;
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3054
    .local v4, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$15;->val$addrs:[Lcom/android/emailcommon/mail/Address;

    .local v1, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v3, v2

    .end local v2           #count:I
    .local v3, count:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v0, v1, v5

    .line 3056
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose$15;->val$ourAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$15;->val$addrList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3058
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$15;->val$addrList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3061
    const-string v9, ""

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/ex/chips/MTKRecipientList;->addRecipient(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    add-int/lit8 v2, v3, 0x1

    .end local v3           #count:I
    .restart local v2       #count:I
    const/16 v9, 0xfa

    if-le v3, v9, :cond_0

    .line 3080
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    :goto_1
    new-instance v9, Lcom/android/email/activity/MessageCompose$15$1;

    invoke-direct {v9, p0, v7}, Lcom/android/email/activity/MessageCompose$15$1;-><init>(Lcom/android/email/activity/MessageCompose$15;Lcom/android/ex/chips/MTKRecipientList;)V

    invoke-virtual {v4, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3087
    return-void

    .line 3071
    .restart local v0       #address:Lcom/android/emailcommon/mail/Address;
    :cond_0
    :try_start_0
    rem-int/lit8 v9, v2, 0xa

    if-nez v9, :cond_1

    .line 3072
    const-wide/16 v9, 0x64

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3054
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2           #count:I
    .restart local v3       #count:I
    goto :goto_0

    .line 3074
    .end local v3           #count:I
    .restart local v2       #count:I
    :catch_0
    move-exception v9

    goto :goto_2

    .end local v2           #count:I
    .restart local v3       #count:I
    :cond_2
    move v2, v3

    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_2

    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    .end local v2           #count:I
    .restart local v3       #count:I
    :cond_3
    move v2, v3

    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_1
.end method
