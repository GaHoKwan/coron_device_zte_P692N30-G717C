.class public Ltmsdk/common/utils/DualSimCallUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Eb:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PHONE_STATE_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.PHONE_STATE2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.PHONE_STATE_EXT"

    aput-object v2, v0, v1

    sput-object v0, Ltmsdk/common/utils/DualSimCallUtil;->Eb:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallState(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 74
    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 76
    const-string v3, "IDLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v2

    .line 78
    :cond_1
    const-string v3, "RINGING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    :cond_2
    const-string v3, "OFFHOOK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    const/4 v2, 0x2

    goto :goto_0

    .line 86
    :cond_3
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 87
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    goto :goto_0
.end method

.method public static registerDaulSimCallStateReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 10
    .parameter "context"
    .parameter "receiver"

    .prologue
    .line 41
    sget-object v2, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 43
    .local v2, adapter:Ltmsdkobf/lm;
    if-nez v2, :cond_0

    .line 45
    sget-object v1, Ltmsdk/common/utils/DualSimCallUtil;->Eb:[Ljava/lang/String;

    .line 57
    .local v1, actions:[Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v5, intentfilter:Landroid/content/IntentFilter;
    const v8, 0x7fffffff

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 59
    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 60
    move-object v3, v1

    .local v3, arr$:[Ljava/lang/String;
    array-length v6, v3

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v0, v3, v4

    .line 61
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 48
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #actions:[Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #intentfilter:Landroid/content/IntentFilter;
    .end local v6           #len$:I
    :cond_0
    invoke-interface {v2}, Ltmsdkobf/lm;->gs()Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, secondAction:Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 51
    :cond_1
    sget-object v1, Ltmsdk/common/utils/DualSimCallUtil;->Eb:[Ljava/lang/String;

    .restart local v1       #actions:[Ljava/lang/String;
    goto :goto_0

    .line 53
    .end local v1           #actions:[Ljava/lang/String;
    :cond_2
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "android.intent.action.PHONE_STATE"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    aput-object v7, v1, v8

    .restart local v1       #actions:[Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v7           #secondAction:Ljava/lang/String;
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #intentfilter:Landroid/content/IntentFilter;
    .restart local v6       #len$:I
    :cond_3
    invoke-virtual {p0, p1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method
