.class public Lcom/mediatek/contacts/simcontact/BootCmpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCmpReceiver.java"


# static fields
.field private static final ACTION_SIM_FILE_CHANGED:Ljava/lang/String; = "android.intent.action.sim.SIM_FILES_CHANGED"

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_DUAL_SIM_MODE:I = 0x0

.field private static final KEY_SLOT_ID:Ljava/lang/String; = "SIM_ID"

.field private static final TAG:Ljava/lang/String; = "BootCmpReceiver"

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotCount()I

    move-result v1

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/mediatek/contacts/simcontact/BootCmpReceiver;->DEFAULT_DUAL_SIM_MODE:I

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simcontact/BootCmpReceiver;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private processBootComplete()V
    .locals 5

    .prologue
    .line 109
    const-string v2, "BootCmpReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processBootComplete],slot count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getAllSlotIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 111
    .local v1, slotId:I
    const-string v2, "BootCmpReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processBootComplete],process slot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {v1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->resetPhbInfoBySlot(I)V

    .line 114
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/contacts/simcontact/BootCmpReceiver;->startSimService(II)V

    goto :goto_0

    .line 116
    .end local v1           #slotId:I
    :cond_0
    return-void
.end method

.method private processPhoneBookChanged(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 86
    const-string v2, "BootCmpReceiver"

    const-string v3, "processPhoneBookChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v2, "ready"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    .local v0, phbReady:Z
    const-string v2, "simId"

    const/16 v3, -0xa

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, slotId:I
    const-string v2, "BootCmpReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processPhoneBookChanged]phbReady:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {v1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->resetPhbInfoBySlot(I)V

    .line 93
    if-eqz v0, :cond_1

    if-ltz v1, :cond_1

    .line 94
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/contacts/simcontact/BootCmpReceiver;->startSimService(II)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    if-ltz v1, :cond_0

    if-nez v0, :cond_0

    .line 100
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/contacts/simcontact/BootCmpReceiver;->startSimService(II)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    sput-object p1, Lcom/mediatek/contacts/simcontact/BootCmpReceiver;->sContext:Landroid/content/Context;

    .line 60
    const-string v1, "BootCmpReceiver"

    const-string v2, "In onReceive "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, action:Ljava/lang/String;
    const-string v1, "BootCmpReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v1, "android.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-direct {p0, p2}, Lcom/mediatek/contacts/simcontact/BootCmpReceiver;->processPhoneBookChanged(Landroid/content/Intent;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/mediatek/contacts/simcontact/BootCmpReceiver;->processBootComplete()V

    goto :goto_0
.end method

.method public startSimService(II)V
    .locals 4
    .parameter "slotId"
    .parameter "workType"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    sget-object v1, Lcom/mediatek/contacts/simcontact/BootCmpReceiver;->sContext:Landroid/content/Context;

    const-class v2, Lcom/mediatek/contacts/simservice/SIMProcessorService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "which_slot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v1, "work_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v1, "BootCmpReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[startSimService]slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|workType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v1, Lcom/mediatek/contacts/simcontact/BootCmpReceiver;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    return-void
.end method
