.class Lcom/android/soundrecorder/SoundRecorder$6;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->addOptionsMenuInflaterFactory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$6;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8
    .parameter "name"
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    .line 1450
    const-string v5, "com.android.internal.view.menu.ListMenuItemView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v6

    .line 1507
    :goto_0
    return-object v3

    .line 1455
    :cond_0
    invoke-static {}, Lcom/android/soundrecorder/SoundRecorder;->access$400()Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1457
    :try_start_0
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$6;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/android/soundrecorder/SoundRecorder;->access$402(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :cond_1
    invoke-static {}, Lcom/android/soundrecorder/SoundRecorder;->access$400()Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v3, v6

    .line 1463
    goto :goto_0

    .line 1458
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/ClassNotFoundException;
    move-object v3, v6

    .line 1459
    goto :goto_0

    .line 1465
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :cond_2
    invoke-static {}, Lcom/android/soundrecorder/SoundRecorder;->access$500()Ljava/lang/reflect/Constructor;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1467
    :try_start_1
    invoke-static {}, Lcom/android/soundrecorder/SoundRecorder;->access$400()Ljava/lang/Class;

    move-result-object v5

    invoke-static {}, Lcom/android/soundrecorder/SoundRecorder;->access$600()[Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-static {v5}, Lcom/android/soundrecorder/SoundRecorder;->access$502(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1475
    :cond_3
    invoke-static {}, Lcom/android/soundrecorder/SoundRecorder;->access$500()Ljava/lang/reflect/Constructor;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v3, v6

    .line 1476
    goto :goto_0

    .line 1469
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/SecurityException;
    move-object v3, v6

    .line 1470
    goto :goto_0

    .line 1471
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .local v2, e:Ljava/lang/NoSuchMethodException;
    move-object v3, v6

    .line 1472
    goto :goto_0

    .line 1480
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :cond_4
    const/4 v3, 0x0

    .line 1482
    .local v3, view:Landroid/view/View;
    const/4 v5, 0x2

    :try_start_2
    new-array v1, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v1, v5

    const/4 v5, 0x1

    aput-object p3, v1, v5

    .line 1483
    .local v1, args:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/soundrecorder/SoundRecorder;->access$500()Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v0, v5

    check-cast v0, Landroid/view/View;

    move-object v3, v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1493
    if-nez v3, :cond_5

    move-object v3, v6

    .line 1494
    goto :goto_0

    .line 1484
    .end local v1           #args:[Ljava/lang/Object;
    :catch_3
    move-exception v2

    .local v2, e:Ljava/lang/IllegalArgumentException;
    move-object v3, v6

    .line 1485
    goto :goto_0

    .line 1486
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .local v2, e:Ljava/lang/InstantiationException;
    move-object v3, v6

    .line 1487
    goto :goto_0

    .line 1488
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_5
    move-exception v2

    .local v2, e:Ljava/lang/IllegalAccessException;
    move-object v3, v6

    .line 1489
    goto :goto_0

    .line 1490
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v2

    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    move-object v3, v6

    .line 1491
    goto :goto_0

    .line 1497
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v1       #args:[Ljava/lang/Object;
    :cond_5
    move-object v4, v3

    .line 1498
    .local v4, viewTemp:Landroid/view/View;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/soundrecorder/SoundRecorder$6$1;

    invoke-direct {v6, p0, v4}, Lcom/android/soundrecorder/SoundRecorder$6$1;-><init>(Lcom/android/soundrecorder/SoundRecorder$6;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1506
    const-string v5, "SR/SoundRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<create ListMenuItemView> return view = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
