.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;
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
    name = "QueryViewCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 10
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
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_6

    .line 225
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-virtual {v7}, Landroid/accessibilityservice/UiTestAutomationBridge;->isConnected()Z

    move-result v7

    if-nez v7, :cond_0

    .line 226
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v8, "Failed to connect to AccessibilityService, try restarting Monkey"

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    .line 265
    :goto_0
    return-object v7

    .line 228
    :cond_0
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-virtual {v7}, Landroid/accessibilityservice/UiTestAutomationBridge;->getLastAccessibilityEvent()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 229
    .local v4, lastEvent:Landroid/view/accessibility/AccessibilityEvent;
    if-nez v4, :cond_1

    .line 230
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v8, "No accessibility event has occured yet"

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    const/4 v7, 0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 236
    .local v3, idType:Ljava/lang/String;
    const-string v7, "viewid"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 238
    const/4 v7, 0x2

    :try_start_0
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    #calls: Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByViewId(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v7, v4}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$200(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 239
    .local v5, node:Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v7, 0x3

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 240
    .local v6, viewQuery:Ljava/lang/String;
    const/4 v7, 0x4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p1, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/commands/monkey/MonkeyViewException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    .local v0, args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-nez v5, :cond_4

    .line 256
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v8, "Node with given ID does not exist"

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 241
    .end local v0           #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #node:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6           #viewQuery:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Lcom/android/commands/monkey/MonkeyViewException;
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyViewException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v1           #e:Lcom/android/commands/monkey/MonkeyViewException;
    :cond_2
    const-string v7, "accessibilityids"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 246
    const/4 v7, 0x2

    :try_start_1
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    #calls: Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v7, v8}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$300(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 247
    .restart local v5       #node:Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v7, 0x4

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 248
    .restart local v6       #viewQuery:Ljava/lang/String;
    const/4 v7, 0x5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p1, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .restart local v0       #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 249
    .end local v0           #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #node:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6           #viewQuery:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 250
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_0

    .line 253
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto/16 :goto_0

    .line 258
    .restart local v0       #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #node:Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v6       #viewQuery:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$400()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;

    .line 259
    .local v2, getter:Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    if-eqz v2, :cond_5

    .line 260
    invoke-interface {v2, v5, v0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v7

    goto/16 :goto_0

    .line 262
    :cond_5
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto/16 :goto_0

    .line 265
    .end local v0           #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #getter:Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    .end local v3           #idType:Ljava/lang/String;
    .end local v4           #lastEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v5           #node:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6           #viewQuery:Ljava/lang/String;
    :cond_6
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto/16 :goto_0
.end method
