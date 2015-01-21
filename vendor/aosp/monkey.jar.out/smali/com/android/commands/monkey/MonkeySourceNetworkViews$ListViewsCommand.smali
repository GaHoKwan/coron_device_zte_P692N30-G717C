.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewsCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 15
    .parameter
    .parameter "queue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v12, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-virtual {v12}, Landroid/accessibilityservice/UiTestAutomationBridge;->getLastAccessibilityEvent()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v8

    .line 186
    .local v8, lastEvent:Landroid/view/accessibility/AccessibilityEvent;
    if-nez v8, :cond_0

    .line 187
    new-instance v12, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v13, 0x0

    const-string v14, "No accessibility event has occured yet"

    invoke-direct {v12, v13, v14}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    .line 209
    :goto_0
    return-object v12

    .line 189
    :cond_0
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 192
    .local v10, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v10, :cond_1

    .line 193
    new-instance v12, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v13, 0x0

    const-string v14, "No accessibility event has occured yet"

    invoke-direct {v12, v13, v14}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 198
    .local v11, packageName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$000()Landroid/content/pm/IPackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-interface {v12, v11, v13, v14}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 199
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #calls: Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    invoke-static {v11, v12}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 200
    .local v7, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v4, fieldBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 202
    .local v5, fields:[Ljava/lang/reflect/Field;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/reflect/Field;
    array-length v9, v1

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v3, v1, v6

    .line 203
    .local v3, field:Ljava/lang/reflect/Field;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 205
    .end local v3           #field:Ljava/lang/reflect/Field;
    :cond_2
    new-instance v12, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v13, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 206
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #arr$:[Ljava/lang/reflect/Field;
    .end local v4           #fieldBuilder:Ljava/lang/StringBuilder;
    .end local v5           #fields:[Ljava/lang/reflect/Field;
    .end local v6           #i$:I
    .end local v7           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v9           #len$:I
    :catch_0
    move-exception v2

    .line 207
    .local v2, e:Landroid/os/RemoteException;
    new-instance v12, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v13, 0x0

    const-string v14, "Unable to retrieve application info from PackageManager"

    invoke-direct {v12, v13, v14}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 209
    .local v2, e:Ljava/lang/ClassNotFoundException;
    new-instance v12, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v13, 0x0

    const-string v14, "Error retrieving class information"

    invoke-direct {v12, v13, v14}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_0
.end method
