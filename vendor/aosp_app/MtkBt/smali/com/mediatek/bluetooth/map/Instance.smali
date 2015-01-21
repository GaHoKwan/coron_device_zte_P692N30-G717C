.class Lcom/mediatek/bluetooth/map/Instance;
.super Ljava/lang/Object;
.source "Instance.java"

# interfaces
.implements Lcom/mediatek/bluetooth/map/ControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/map/Instance$Listener;
    }
.end annotation


# static fields
.field private static FOLDER_PATH_PREFIX:Ljava/lang/String; = null

.field private static final INSTANCE_STATE_MAS_CONNECTED:I = 0x2

.field private static final INSTANCE_STATE_MAS_CONNECTING:I = 0x1

.field private static final INSTANCE_STATE_MAS_DISCONNECTED:I = 0x0

.field private static final INSTANCE_STATE_MAS_DISCONNECTING:I = 0x3


# instance fields
.field private final NAME_BASE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private folderHirarchy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field mControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/bluetooth/map/Controller;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFolder:Ljava/lang/String;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mFolderListReqCache:Lcom/mediatek/bluetooth/map/cache/FolderListRequest;

.field private mFolderReqCache:Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;

.field private mInstanceId:I

.field private mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

.field private mMasConnected:Z

.field private mMasState:I

.field private mMessageCache:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

.field private mMnsConnected:Z

.field private mMsgListReqCache:Lcom/mediatek/bluetooth/map/cache/MessageListRequest;

.field private mMsgListRspCache:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

.field private mMsgReqCache:Lcom/mediatek/bluetooth/map/cache/MessageRequest;

.field private mName:Ljava/lang/String;

.field private mRegistered:Z

.field private mServer:Lcom/mediatek/bluetooth/map/BluetoothMapServerService;

.field private mSimId:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 760
    const-string v0, "telecom/msg/"

    sput-object v0, Lcom/mediatek/bluetooth/map/Instance;->FOLDER_PATH_PREFIX:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "MAPInstance"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->TAG:Ljava/lang/String;

    .line 63
    const-string v0, "instance"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->NAME_BASE:Ljava/lang/String;

    .line 65
    const-string v0, "/data/@btmtk/profile/map"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mCurrentFolder:Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    .line 81
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mRegistered:Z

    .line 82
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasConnected:Z

    .line 83
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMnsConnected:Z

    .line 85
    iput v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasState:I

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->folderHirarchy:Ljava/util/ArrayList;

    .line 134
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/InstanceUtil;->assignInstanceId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instance_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mName:Ljava/lang/String;

    .line 137
    iput p2, p0, Lcom/mediatek/bluetooth/map/Instance;->mType:I

    .line 138
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/Instance;->initCache()V

    .line 139
    return-void
.end method

.method constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "type"
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "MAPInstance"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->TAG:Ljava/lang/String;

    .line 63
    const-string v0, "instance"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->NAME_BASE:Ljava/lang/String;

    .line 65
    const-string v0, "/data/@btmtk/profile/map"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mCurrentFolder:Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    .line 81
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mRegistered:Z

    .line 82
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasConnected:Z

    .line 83
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMnsConnected:Z

    .line 85
    iput v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasState:I

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->folderHirarchy:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    .line 120
    iput p3, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    .line 121
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/InstanceUtil;->assignInstanceId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mName:Ljava/lang/String;

    .line 123
    iput p2, p0, Lcom/mediatek/bluetooth/map/Instance;->mType:I

    .line 124
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/Instance;->initCache()V

    .line 126
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/Instance;->initController()V

    .line 132
    return-void
.end method

.method constructor <init>(Landroid/content/Context;III)V
    .locals 3
    .parameter "context"
    .parameter "type"
    .parameter "simId"
    .parameter "accountId"

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "MAPInstance"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->TAG:Ljava/lang/String;

    .line 63
    const-string v0, "instance"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->NAME_BASE:Ljava/lang/String;

    .line 65
    const-string v0, "/data/@btmtk/profile/map"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mCurrentFolder:Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    .line 81
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mRegistered:Z

    .line 82
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasConnected:Z

    .line 83
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMnsConnected:Z

    .line 85
    iput v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasState:I

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->folderHirarchy:Ljava/util/ArrayList;

    .line 106
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    .line 107
    iput p3, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    .line 108
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    .line 109
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/InstanceUtil;->assignInstanceId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mName:Ljava/lang/String;

    .line 111
    iput p2, p0, Lcom/mediatek/bluetooth/map/Instance;->mType:I

    .line 112
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/Instance;->initCache()V

    .line 114
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/Instance;->initController()V

    .line 115
    return-void
.end method

.method private clearCache()V
    .locals 4

    .prologue
    .line 433
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 434
    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 436
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/map/Controller;

    .line 437
    .local v0, con:Lcom/mediatek/bluetooth/map/Controller;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/Controller;->onStop()V

    goto :goto_0

    .line 439
    .end local v0           #con:Lcom/mediatek/bluetooth/map/Controller;
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method private getChildFolders(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "current"

    .prologue
    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v0, childFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 592
    const/4 v3, 0x0

    .line 619
    :goto_0
    return-object v3

    .line 594
    :cond_0
    iget-boolean v3, p0, Lcom/mediatek/bluetooth/map/Instance;->mRegistered:Z

    if-nez v3, :cond_1

    .line 595
    const-string v3, "instance has not been registered"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_0

    .line 598
    :cond_1
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, list:[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_2

    .line 601
    const-string v3, "telecom"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_0

    .line 603
    :cond_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, last:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 605
    const-string v3, "map"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 606
    const-string v3, "telecom"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 607
    :cond_3
    const-string v3, "telecom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 608
    const-string v3, "msg"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 609
    :cond_4
    const-string v3, "msg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 610
    const-string v3, "draft"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    const-string v3, "inbox"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    const-string v3, "outbox"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    const-string v3, "deleted"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    const-string v3, "sent"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 616
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected folder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getControllersByType(I)[Lcom/mediatek/bluetooth/map/Controller;
    .locals 7
    .parameter "type"

    .prologue
    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v0, cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/Controller;>;"
    const/4 v4, 0x4

    .line 702
    .local v4, msgKind:I
    const/4 v2, 0x1

    .line 703
    .local v2, mask:I
    const/4 v1, 0x0

    .line 704
    .local v1, index:I
    const/4 v3, 0x0

    .line 706
    .local v3, msg:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 707
    and-int v3, v2, p1

    .line 708
    invoke-virtual {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->containsMessageController(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 709
    iget-object v5, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/mediatek/bluetooth/map/Controller;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/mediatek/bluetooth/map/Controller;

    return-object v5
.end method

.method private getMasState()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasState:I

    return v0
.end method

.method private initCache()V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    .line 143
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mMsgListReqCache:Lcom/mediatek/bluetooth/map/cache/MessageListRequest;

    .line 144
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mMsgListRspCache:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    .line 146
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mMessageCache:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    .line 147
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mFolderListReqCache:Lcom/mediatek/bluetooth/map/cache/FolderListRequest;

    .line 148
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/MessageRequest;

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mMsgReqCache:Lcom/mediatek/bluetooth/map/cache/MessageRequest;

    .line 149
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mFolderReqCache:Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;

    .line 151
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/Instance;->initFolderStructure()V

    .line 152
    return-void
.end method

.method private initController()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 154
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    const-string v4, "BLUETOOTH_MAP_SETTING"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 155
    .local v1, sp:Landroid/content/SharedPreferences;
    iget v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mType:I

    .line 156
    .local v2, type:I
    invoke-virtual {p0, v7}, Lcom/mediatek/bluetooth/map/Instance;->isMsgTypeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const-string v3, "ACCOUNT_ID_SETTING"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    .line 158
    invoke-virtual {p0, v7}, Lcom/mediatek/bluetooth/map/Instance;->addMessageController(I)Z

    .line 160
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->isMsgTypeSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->isMsgTypeSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->isMsgTypeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM_ID_SETTING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 164
    .local v0, simset:Z
    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p0, v6}, Lcom/mediatek/bluetooth/map/Instance;->enableSim(Z)Z

    .line 168
    .end local v0           #simset:Z
    :cond_2
    return-void
.end method

.method private initFolderStructure()V
    .locals 5

    .prologue
    .line 444
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 445
    .local v1, rootFolder:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/Instance;->folderHirarchy:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 449
    .local v0, firstFolder:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v4, "telecom"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/Instance;->folderHirarchy:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 453
    .local v2, secondFolder:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v4, "msg"

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/Instance;->folderHirarchy:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 457
    .local v3, thirdFolder:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v4, "inbox"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 458
    const-string v4, "outbox"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    const-string v4, "sent"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 460
    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 461
    const-string v4, "draft"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/Instance;->folderHirarchy:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    return-void
.end method

.method private isValidPath(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 489
    if-eqz p1, :cond_0

    const-string v3, "/data/@btmtk/profile/map"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    .line 510
    :goto_0
    return v3

    .line 492
    :cond_1
    const-string v3, "/data/@btmtk/profile/map"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, virtualPath:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v3, v4

    .line 494
    goto :goto_0

    .line 496
    :cond_3
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, subpath:[Ljava/lang/String;
    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    aget-object v3, v1, v5

    if-nez v3, :cond_4

    .line 498
    const-string v3, ""

    aput-object v3, v1, v5

    .line 501
    :cond_4
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/Instance;->folderHirarchy:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 502
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/Instance;->folderHirarchy:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    aget-object v6, v1, v0

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 507
    :cond_5
    array-length v3, v1

    if-ne v0, v3, :cond_7

    move v3, v4

    .line 508
    goto :goto_0

    .line 501
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v3, v5

    .line 510
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 836
    if-eqz p1, :cond_0

    .line 837
    const-string v0, "MAPInstance"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_0
    return-void
.end method

.method private setMasState(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x2

    .line 403
    iget v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasState:I

    packed-switch v0, :pswitch_data_0

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mas state is abnormal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 405
    :pswitch_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    .line 406
    :cond_1
    iput p1, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasState:I

    goto :goto_0

    .line 411
    :pswitch_1
    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_0

    .line 412
    :cond_2
    iput p1, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasState:I

    goto :goto_0

    .line 417
    :pswitch_2
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_0

    .line 418
    :cond_3
    iput p1, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasState:I

    goto :goto_0

    .line 423
    :pswitch_3
    if-nez p1, :cond_0

    .line 424
    iput p1, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasState:I

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addMessageController(I)Z
    .locals 8
    .parameter "type"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 229
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    new-instance v0, Lcom/mediatek/bluetooth/map/EmailController;

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/mediatek/bluetooth/map/EmailController;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/map/Instance;J)V

    .line 232
    .local v0, controller:Lcom/mediatek/bluetooth/map/EmailController;
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/EmailController;->getAccount()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    .line 236
    .end local v0           #controller:Lcom/mediatek/bluetooth/map/EmailController;
    :cond_0
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/bluetooth/map/MmsController;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    invoke-direct {v3, v4, p0, v5}, Lcom/mediatek/bluetooth/map/MmsController;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/map/Instance;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/bluetooth/map/SmsController;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    invoke-direct {v3, v4, p0, v5, v7}, Lcom/mediatek/bluetooth/map/SmsController;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/map/Instance;II)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/bluetooth/map/SmsController;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    invoke-direct {v3, v4, p0, v5, v6}, Lcom/mediatek/bluetooth/map/SmsController;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/map/Instance;II)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_3
    return v6
.end method

.method public containsMessageController(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public deregisterCallback()V
    .locals 4

    .prologue
    .line 736
    const-string v2, "deregisterCallback()"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 738
    iget-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMnsConnected:Z

    if-nez v2, :cond_1

    .line 739
    const-string v2, "mns is not connected"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMnsConnected:Z

    .line 749
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 750
    .local v0, controllers:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 751
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 752
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/map/Controller;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/map/Controller;->deregisterListener()V

    goto :goto_1

    .line 754
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    if-eqz v2, :cond_0

    .line 755
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    iget v3, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-interface {v2, v3}, Lcom/mediatek/bluetooth/map/Instance$Listener;->onInstanceReportDisabled(I)V

    .line 756
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    goto :goto_0
.end method

.method public disableSim()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableSim():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 299
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/map/Instance;->removeMessageController(I)V

    .line 300
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/map/Instance;->removeMessageController(I)V

    .line 301
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/map/Instance;->removeMessageController(I)V

    .line 303
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    const-string v2, "BLUETOOTH_MAP_SETTING"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 304
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM_ID_SETTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 307
    return-void
.end method

.method public enableSim(Z)Z
    .locals 8
    .parameter "isSave"

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableSim():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSave:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 269
    if-eqz p1, :cond_0

    .line 270
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    const-string v5, "BLUETOOTH_MAP_SETTING"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 271
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM_ID_SETTING"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 274
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    iget v4, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    invoke-static {v4}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getGeminiSmsType(I)I

    move-result v1

    .line 280
    .local v1, type:I
    :goto_0
    invoke-virtual {p0, v7}, Lcom/mediatek/bluetooth/map/Instance;->isMsgTypeSupported(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    invoke-virtual {p0, v7}, Lcom/mediatek/bluetooth/map/Instance;->addMessageController(I)Z

    .line 284
    :cond_1
    if-ne v1, v6, :cond_3

    invoke-virtual {p0, v6}, Lcom/mediatek/bluetooth/map/Instance;->isMsgTypeSupported(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    invoke-virtual {p0, v6}, Lcom/mediatek/bluetooth/map/Instance;->addMessageController(I)Z

    .line 294
    :goto_1
    return v2

    .line 277
    .end local v1           #type:I
    :cond_2
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getSmsType()I

    move-result v1

    .restart local v1       #type:I
    goto :goto_0

    .line 287
    :cond_3
    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/map/Instance;->isMsgTypeSupported(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 289
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetooth/map/Instance;->addMessageController(I)Z

    goto :goto_1

    .line 291
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected sim type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    move v2, v3

    .line 292
    goto :goto_1
.end method

.method public getAccountId()J
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/map/EmailController;

    .line 194
    .local v0, controller:Lcom/mediatek/bluetooth/map/EmailController;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/EmailController;->getAccount()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    .line 199
    :goto_0
    iget-wide v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    return-wide v1

    .line 197
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    goto :goto_0
.end method

.method public getBMessageObject()Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mMessageCache:Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getFolderListReqCache()Lcom/mediatek/bluetooth/map/cache/FolderListRequest;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mFolderListReqCache:Lcom/mediatek/bluetooth/map/cache/FolderListRequest;

    return-object v0
.end method

.method public getFolderReqCache()Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mFolderReqCache:Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;

    return-object v0
.end method

.method public getFolderlist(Lcom/mediatek/bluetooth/map/cache/FolderListRequest;)[Lcom/mediatek/bluetooth/map/cache/FolderListObject;
    .locals 9
    .parameter "req"

    .prologue
    const/4 v4, 0x0

    .line 558
    const-string v7, "getFolderlist"

    invoke-direct {p0, v7}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->getSize()I

    move-result v6

    .line 561
    .local v6, size:I
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/FolderListRequest;->getOffset()I

    move-result v5

    .line 564
    .local v5, offset:I
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-object v4

    .line 567
    :cond_1
    if-gez v6, :cond_2

    .line 568
    const-string v7, "size is smaller than 0"

    invoke-direct {p0, v7}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v2, folderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/cache/FolderListObject;>;"
    iget-object v7, p0, Lcom/mediatek/bluetooth/map/Instance;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/mediatek/bluetooth/map/Instance;->getChildFolders(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, childs:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v7, v0

    if-eqz v7, :cond_0

    .line 579
    move v3, v5

    .local v3, index:I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 580
    new-instance v1, Lcom/mediatek/bluetooth/map/cache/FolderListObject;

    invoke-direct {v1}, Lcom/mediatek/bluetooth/map/cache/FolderListObject;-><init>()V

    .line 581
    .local v1, folder:Lcom/mediatek/bluetooth/map/cache/FolderListObject;
    aget-object v7, v0, v3

    invoke-virtual {v1, v7}, Lcom/mediatek/bluetooth/map/cache/FolderListObject;->setName(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 584
    .end local v1           #folder:Lcom/mediatek/bluetooth/map/cache/FolderListObject;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/mediatek/bluetooth/map/cache/FolderListObject;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/mediatek/bluetooth/map/cache/FolderListObject;

    .line 585
    .local v4, object:[Lcom/mediatek/bluetooth/map/cache/FolderListObject;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "child folder size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", foldersize is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    return v0
.end method

.method public getMessage(Lcom/mediatek/bluetooth/map/cache/MessageRequest;)Lcom/mediatek/bluetooth/map/cache/BMessageObject;
    .locals 5
    .parameter "req"

    .prologue
    const/4 v2, 0x0

    .line 636
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageRequest;->getHandle()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getMessageType(J)I

    move-result v1

    .line 637
    .local v1, type:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessage(): type->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-object v2

    .line 643
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/map/Controller;

    .line 644
    .local v0, controller:Lcom/mediatek/bluetooth/map/Controller;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/map/Controller;->getMessage(Lcom/mediatek/bluetooth/map/cache/MessageRequest;)Lcom/mediatek/bluetooth/map/cache/BMessageObject;

    move-result-object v2

    goto :goto_0
.end method

.method public getMessageListCache()Lcom/mediatek/bluetooth/map/cache/MessageListRequest;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mMsgListReqCache:Lcom/mediatek/bluetooth/map/cache/MessageListRequest;

    return-object v0
.end method

.method public getMessageReqCache()Lcom/mediatek/bluetooth/map/cache/MessageRequest;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mMsgReqCache:Lcom/mediatek/bluetooth/map/cache/MessageRequest;

    return-object v0
.end method

.method public getMessagelist(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;)Lcom/mediatek/bluetooth/map/cache/MessageListObject;
    .locals 9
    .parameter "req"

    .prologue
    .line 526
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getMessageType()I

    move-result v6

    .line 528
    .local v6, msgType:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMessagelist(): type is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 529
    const/4 v4, 0x0

    .line 530
    .local v4, isSizeLimited:Z
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v7

    if-nez v7, :cond_0

    .line 531
    const/4 v7, 0x0

    .line 553
    :goto_0
    return-object v7

    .line 534
    :cond_0
    iget-object v7, p0, Lcom/mediatek/bluetooth/map/Instance;->mMsgListRspCache:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    invoke-virtual {v7}, Lcom/mediatek/bluetooth/map/cache/MessageListObject;->reset()V

    .line 535
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/MessageListRequest;->getListSize()I

    move-result v7

    if-nez v7, :cond_1

    .line 536
    const/4 v4, 0x1

    .line 539
    :cond_1
    if-nez v6, :cond_2

    .line 540
    iget v6, p0, Lcom/mediatek/bluetooth/map/Instance;->mType:I

    .line 545
    :goto_1
    invoke-direct {p0, v6}, Lcom/mediatek/bluetooth/map/Instance;->getControllersByType(I)[Lcom/mediatek/bluetooth/map/Controller;

    move-result-object v2

    .line 547
    .local v2, controllers:[Lcom/mediatek/bluetooth/map/Controller;
    if-eqz v2, :cond_3

    array-length v7, v2

    if-eqz v7, :cond_3

    .line 548
    move-object v0, v2

    .local v0, arr$:[Lcom/mediatek/bluetooth/map/Controller;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 549
    .local v1, con:Lcom/mediatek/bluetooth/map/Controller;
    invoke-virtual {v1, p1}, Lcom/mediatek/bluetooth/map/Controller;->getMessageList(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;)Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 542
    .end local v0           #arr$:[Lcom/mediatek/bluetooth/map/Controller;
    .end local v1           #con:Lcom/mediatek/bluetooth/map/Controller;
    .end local v2           #controllers:[Lcom/mediatek/bluetooth/map/Controller;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_2
    iget v7, p0, Lcom/mediatek/bluetooth/map/Instance;->mType:I

    and-int/2addr v6, v7

    goto :goto_1

    .line 553
    .restart local v2       #controllers:[Lcom/mediatek/bluetooth/map/Controller;
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->getMsgListRspCache()Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    move-result-object v7

    goto :goto_0
.end method

.method public getMsgListRspCache()Lcom/mediatek/bluetooth/map/cache/MessageListObject;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mMsgListRspCache:Lcom/mediatek/bluetooth/map/cache/MessageListObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "/data/@btmtk/profile/map"

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mSimId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mType:I

    return v0
.end method

.method public isMasConnected()Z
    .locals 3

    .prologue
    .line 821
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mRegistered:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mMasState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 822
    .local v0, state:Z
    :goto_0
    if-nez v0, :cond_0

    .line 823
    const-string v1, "instance has not initialized or no mas connection exist"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 825
    :cond_0
    return v0

    .line 821
    .end local v0           #state:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMnsConnected()Z
    .locals 2

    .prologue
    .line 828
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mRegistered:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mMnsConnected:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 829
    .local v0, state:Z
    :goto_0
    if-nez v0, :cond_0

    .line 830
    const-string v1, "instance has not initialized or no mns connection exist or device is null"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 832
    :cond_0
    return v0

    .line 828
    .end local v0           #state:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMsgTypeSupported(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 171
    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mType:I

    and-int v0, v1, p1

    .line 172
    .local v0, temp:I
    if-lez v0, :cond_0

    .line 173
    const/4 v1, 0x1

    .line 175
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "device"

    .prologue
    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceConnected():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    const-string v3, "error:the instance has been connected"

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 365
    :cond_0
    return-void

    .line 355
    :cond_1
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 356
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/map/Instance;->setMasState(I)V

    .line 358
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 359
    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 361
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/map/Controller;

    .line 362
    .local v0, con:Lcom/mediatek/bluetooth/map/Controller;
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/Controller;->onStart()V

    goto :goto_0
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/Instance;->getMasState()I

    move-result v0

    if-nez v0, :cond_0

    .line 377
    const-string v0, "the mas connection in the mas has been disconnected"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/Instance;->setMasState(I)V

    .line 390
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/Instance;->clearCache()V

    .line 392
    const-string v0, "/data/@btmtk/profile/map"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mCurrentFolder:Ljava/lang/String;

    goto :goto_0

    .line 394
    :cond_1
    const-string v0, "error: the device is null, or other device disconnect event is received"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDeviceDisconnecting(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/Instance;->setMasState(I)V

    .line 372
    :cond_0
    return-void
.end method

.method public onInstanceDeregistered()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    const-string v0, "onInstanceDeregistered"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 341
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mRegistered:Z

    .line 342
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mMnsConnected:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->deregisterCallback()V

    .line 344
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mMnsConnected:Z

    .line 347
    :cond_0
    return-void
.end method

.method public onInstanceRegistered()V
    .locals 1

    .prologue
    .line 335
    const-string v0, "onInstanceRegistered"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mRegistered:Z

    .line 337
    return-void
.end method

.method public onMessageDeleted(JILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "msgtype"
    .parameter "mailbox"

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMnsConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/EventReport;

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/cache/EventReport;-><init>(I)V

    .line 780
    .local v0, report:Lcom/mediatek/bluetooth/map/cache/EventReport;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mediatek/bluetooth/map/Instance;->FOLDER_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/mediatek/bluetooth/map/cache/EventReport;->notifyMessageDeleted(JILjava/lang/String;)Z

    .line 781
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v0}, Lcom/mediatek/bluetooth/map/Instance$Listener;->onInstanceChanged(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)V

    goto :goto_0
.end method

.method public onMessageDelivered(JII)V
    .locals 6
    .parameter "id"
    .parameter "msgtype"
    .parameter "result"

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMnsConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/EventReport;

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/cache/EventReport;-><init>(I)V

    .line 802
    .local v0, report:Lcom/mediatek/bluetooth/map/cache/EventReport;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mediatek/bluetooth/map/Instance;->FOLDER_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v1, p1

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetooth/map/cache/EventReport;->notifyDeliverResult(JILjava/lang/String;I)Z

    .line 804
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v0}, Lcom/mediatek/bluetooth/map/Instance$Listener;->onInstanceChanged(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)V

    goto :goto_0
.end method

.method public onMessageSent(JII)V
    .locals 6
    .parameter "id"
    .parameter "msgtype"
    .parameter "result"

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMnsConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/EventReport;

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/cache/EventReport;-><init>(I)V

    .line 791
    .local v0, report:Lcom/mediatek/bluetooth/map/cache/EventReport;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mediatek/bluetooth/map/Instance;->FOLDER_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v1, p1

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetooth/map/cache/EventReport;->notifySendResult(JILjava/lang/String;I)Z

    .line 792
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v0}, Lcom/mediatek/bluetooth/map/Instance$Listener;->onInstanceChanged(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)V

    goto :goto_0
.end method

.method public onMessageShifted(JILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "id"
    .parameter "msgtype"
    .parameter "oldMailbox"
    .parameter "newMailbox"

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMnsConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/map/cache/EventReport;

    iget v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/cache/EventReport;-><init>(I)V

    .line 814
    .local v0, report:Lcom/mediatek/bluetooth/map/cache/EventReport;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mediatek/bluetooth/map/Instance;->FOLDER_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mediatek/bluetooth/map/Instance;->FOLDER_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetooth/map/cache/EventReport;->notifyMessageShifted(JILjava/lang/String;Ljava/lang/String;)Z

    .line 815
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    if-eqz v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v0}, Lcom/mediatek/bluetooth/map/Instance$Listener;->onInstanceChanged(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)V

    goto :goto_0
.end method

.method public onNewMessage(JI)V
    .locals 4
    .parameter "id"
    .parameter "msgtype"

    .prologue
    .line 764
    const-string v0, "telecominbox"

    .line 765
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMnsConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    new-instance v1, Lcom/mediatek/bluetooth/map/cache/EventReport;

    iget v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    invoke-direct {v1, v2}, Lcom/mediatek/bluetooth/map/cache/EventReport;-><init>(I)V

    .line 769
    .local v1, report:Lcom/mediatek/bluetooth/map/cache/EventReport;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mediatek/bluetooth/map/Instance;->FOLDER_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "inbox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/mediatek/bluetooth/map/cache/EventReport;->notifyNewMessageEvent(JILjava/lang/String;)Z

    .line 770
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3, v1}, Lcom/mediatek/bluetooth/map/Instance$Listener;->onInstanceChanged(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)V

    goto :goto_0
.end method

.method public pushMessage(Lcom/mediatek/bluetooth/map/cache/BMessageObject;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 623
    const/4 v1, 0x0

    .line 624
    .local v1, flag:Z
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    const/4 v2, 0x0

    .line 632
    :goto_0
    return v2

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/BMessageObject;->getMessageType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/map/Controller;

    .line 628
    .local v0, controller:Lcom/mediatek/bluetooth/map/Controller;
    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/map/Controller;->pushMessage(Lcom/mediatek/bluetooth/map/cache/BMessageObject;)Z

    move-result v1

    :cond_1
    move v2, v1

    .line 632
    goto :goto_0
.end method

.method public registerCallback(Lcom/mediatek/bluetooth/map/Instance$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 720
    const-string v2, "registerCallback()"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 722
    const-string v2, "MAS has not been connected"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 734
    :goto_0
    return-void

    .line 726
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mMnsConnected:Z

    .line 728
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 729
    .local v0, controllers:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 730
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 731
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/map/Controller;

    invoke-virtual {v2, p0}, Lcom/mediatek/bluetooth/map/Controller;->registerListener(Lcom/mediatek/bluetooth/map/ControllerListener;)V

    goto :goto_1

    .line 733
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_1
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/Instance;->mListener:Lcom/mediatek/bluetooth/map/Instance$Listener;

    goto :goto_0
.end method

.method public removeMessageController(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    .line 262
    :cond_1
    return-void
.end method

.method public setFolder(Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;)I
    .locals 7
    .parameter "req"

    .prologue
    const/4 v4, 0x0

    .line 467
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;->getFolder()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, folder:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v4

    .line 472
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/SetFolderRequest;->getMasId()I

    move-result v5

    int-to-long v2, v5

    .line 473
    .local v2, id:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFolder(): new folder is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 476
    iget v5, p0, Lcom/mediatek/bluetooth/map/Instance;->mInstanceId:I

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/bluetooth/map/Instance;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/Instance;->isValidPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 478
    iput-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mCurrentFolder:Ljava/lang/String;

    .line 483
    const/4 v4, 0x1

    goto :goto_0

    .line 480
    :cond_2
    const-string v5, "mas id mismatch or device mismatch"

    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMessageStatus(Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;)Z
    .locals 14
    .parameter "req"

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 652
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;->getHandle()J

    move-result-wide v1

    .line 653
    .local v1, handle:J
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;->getIndicator()I

    move-result v5

    .line 654
    .local v5, indicator:I
    invoke-virtual {p1}, Lcom/mediatek/bluetooth/map/cache/StatusSwitchRequest;->getValue()I

    move-result v9

    .line 655
    .local v9, value:I
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getMessageType(J)I

    move-result v6

    .line 656
    .local v6, msgType:I
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/map/util/HandleUtil;->getId(J)J

    move-result-wide v3

    .line 657
    .local v3, id:J
    const/4 v8, 0x0

    .line 659
    .local v8, result:Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setMessageStatus(): handle is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "indicator is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v11

    if-nez v11, :cond_0

    .line 695
    :goto_0
    return v10

    .line 665
    :cond_0
    iget-object v11, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/map/Controller;

    .line 666
    .local v0, controller:Lcom/mediatek/bluetooth/map/Controller;
    if-eqz v0, :cond_7

    .line 667
    if-ne v5, v13, :cond_3

    .line 669
    if-ne v9, v13, :cond_1

    .line 670
    invoke-virtual {v0, v3, v4}, Lcom/mediatek/bluetooth/map/Controller;->deleteMessage(J)Z

    move-result v8

    :goto_1
    move v10, v8

    .line 695
    goto :goto_0

    .line 671
    :cond_1
    if-nez v9, :cond_2

    .line 672
    invoke-virtual {v0, v3, v4}, Lcom/mediatek/bluetooth/map/Controller;->restoreMessage(J)Z

    move-result v8

    goto :goto_1

    .line 674
    :cond_2
    const-string v11, "invalid status value"

    invoke-direct {p0, v11}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_3
    if-nez v5, :cond_6

    .line 680
    if-ne v9, v13, :cond_4

    .line 681
    const/4 v7, 0x2

    .line 688
    .local v7, readStatus:I
    :goto_2
    invoke-virtual {v0, v3, v4, v7}, Lcom/mediatek/bluetooth/map/Controller;->setMessageStatus(JI)Z

    move-result v8

    .line 689
    goto :goto_1

    .line 682
    .end local v7           #readStatus:I
    :cond_4
    if-nez v9, :cond_5

    .line 683
    const/4 v7, 0x1

    .restart local v7       #readStatus:I
    goto :goto_2

    .line 685
    .end local v7           #readStatus:I
    :cond_5
    const-string v11, "invalid status value"

    invoke-direct {p0, v11}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid indicator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 693
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid message type:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/bluetooth/map/Instance;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateInbox()I
    .locals 3

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/Instance;->isMasConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    const/4 v1, 0x0

    .line 522
    :goto_0
    return v1

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/map/Controller;

    .line 519
    .local v0, controller:Lcom/mediatek/bluetooth/map/Controller;
    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {v0}, Lcom/mediatek/bluetooth/map/Controller;->updateInbox()Z

    .line 522
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateMessageController(IJ)Z
    .locals 6
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 311
    const/4 v2, 0x0

    .line 313
    .local v2, result:Z
    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    .line 327
    :goto_0
    return v3

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/Instance;->mControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/map/EmailController;

    .line 317
    .local v0, controller:Lcom/mediatek/bluetooth/map/EmailController;
    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/bluetooth/map/EmailController;->setAccount(J)Z

    move-result v2

    .line 319
    if-eqz v2, :cond_1

    .line 320
    iput-wide p2, p0, Lcom/mediatek/bluetooth/map/Instance;->mAccountId:J

    .line 321
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/Instance;->mContext:Landroid/content/Context;

    const-string v5, "BLUETOOTH_MAP_SETTING"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 322
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ACCOUNT_ID_SETTING"

    invoke-interface {v1, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    move v3, v2

    .line 327
    goto :goto_0
.end method
