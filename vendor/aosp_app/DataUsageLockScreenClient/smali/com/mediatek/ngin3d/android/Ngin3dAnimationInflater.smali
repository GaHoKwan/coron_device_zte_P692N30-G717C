.class public final Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;
.super Ljava/lang/Object;
.source "Ngin3dAnimationInflater.java"


# static fields
.field private static final COLOR_PROPERTY:Ljava/lang/String; = "color"

.field public static final DEBUG:Z = true

.field private static final OPACITY_PROPERTY:Ljava/lang/String; = "opacity"

.field private static final POSITION_PROPERTY:Ljava/lang/String; = "position"

.field private static final ROTATION_PROPERTY:Ljava/lang/String; = "rotation"

.field private static final SCALE_PROPERTY:Ljava/lang/String; = "scale"

.field private static final TAG:Ljava/lang/String; = "Ngin3dAnimationInflater"

.field private static final XML_TAG_ANIMATION_GROUP:Ljava/lang/String; = "AnimationGroup"

.field private static final XML_TAG_KEYFRAME_ANIMATION:Ljava/lang/String; = "KeyframeAnimation"

.field private static final XML_TAG_PROPERTY_ANIMATION:Ljava/lang/String; = "PropertyAnimation"

.field private static sIsKeyframeAnimation:Z

.field private static sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method private static getAnimationTarget(ILcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/Actor;
    .locals 1
    .parameter "targetResId"
    .parameter "container"

    .prologue
    .line 479
    move-object v0, p1

    .line 480
    .local v0, target:Lcom/mediatek/ngin3d/Actor;
    if-eqz p1, :cond_0

    .line 481
    invoke-virtual {p1, p0}, Lcom/mediatek/ngin3d/Container;->findChildByTag(I)Lcom/mediatek/ngin3d/Actor;

    move-result-object v0

    .line 483
    :cond_0
    return-object v0
.end method

.method public static inflateAnimation(Landroid/content/Context;ILcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 12
    .parameter "context"
    .parameter "xmlResId"
    .parameter "mContainer"

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 109
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    const/4 v8, 0x0

    .line 112
    .local v8, xmlRootAnimation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    new-instance v9, Lcom/mediatek/ngin3d/android/StyleableResolver;

    invoke-direct {v9, p0}, Lcom/mediatek/ngin3d/android/StyleableResolver;-><init>(Landroid/content/Context;)V

    sput-object v9, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    .line 115
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 120
    .local v2, animationGroupList:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/animation/AnimationGroup;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, xmlEventType:I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_1

    .line 121
    const/4 v9, 0x0

    sput-boolean v9, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sIsKeyframeAnimation:Z

    .line 123
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 125
    :pswitch_1
    const-string v9, "Ngin3dAnimationInflater"

    const-string v10, "Start document"

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 180
    .end local v7           #xmlEventType:I
    :catch_0
    move-exception v3

    .line 181
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "Ngin3dAnimationInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parser Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-object v8

    .line 128
    .restart local v7       #xmlEventType:I
    :pswitch_2
    :try_start_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, tag:Ljava/lang/String;
    const-string v9, "Ngin3dAnimationInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start Tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {v6, p0, v4, p2}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->newAnimationByTag(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v1

    .line 133
    .local v1, animation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    if-nez v8, :cond_2

    .line 134
    move-object v8, v1

    .line 135
    const-string v9, "Ngin3dAnimationInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmlRootAnimation = null, set to animation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 182
    .end local v1           #animation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #xmlEventType:I
    :catch_1
    move-exception v3

    .line 183
    .local v3, e:Ljava/io/IOException;
    const-string v9, "Ngin3dAnimationInflater"

    const-string v10, "IOException occurs. Unable to read resource file."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #animation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v7       #xmlEventType:I
    :cond_2
    :try_start_2
    instance-of v9, v8, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    if-eqz v9, :cond_4

    .line 141
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 142
    move-object v0, v8

    check-cast v0, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    move-object v9, v0

    invoke-virtual {v9, v1}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->add(Lcom/mediatek/ngin3d/animation/Animation;)Lcom/mediatek/ngin3d/animation/AnimationGroup;

    .line 143
    const-string v9, "Ngin3dAnimationInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "no proper sub AnimationGroup. add animation into xmlRootAnimation:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_2
    instance-of v9, v1, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    if-eqz v9, :cond_0

    sget-boolean v9, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sIsKeyframeAnimation:Z

    if-nez v9, :cond_0

    .line 154
    check-cast v1, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    .end local v1           #animation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v9, "Ngin3dAnimationInflater"

    const-string v10, "animation is a AnimationGroup, add into AnimationGroupList."

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    .restart local v1       #animation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    :cond_3
    const-string v9, "Ngin3dAnimationInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "animationGroupList size :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    .line 147
    .local v5, properAnimationGroup:Lcom/mediatek/ngin3d/animation/AnimationGroup;
    invoke-virtual {v5, v1}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->add(Lcom/mediatek/ngin3d/animation/Animation;)Lcom/mediatek/ngin3d/animation/AnimationGroup;

    .line 148
    const-string v9, "Ngin3dAnimationInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add animation into proper sub animationGroup.  animation:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", properAnimationGroup: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 158
    .end local v5           #properAnimationGroup:Lcom/mediatek/ngin3d/animation/AnimationGroup;
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "xmlRootAnimation is not an AnimationGroup, can\'t add animation into it."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 163
    .end local v1           #animation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .end local v6           #tag:Ljava/lang/String;
    :pswitch_3
    const-string v9, "Ngin3dAnimationInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "End Tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AnimationGroup"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    const-string v9, "Ngin3dAnimationInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "End Tag -- mContainerList size :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 169
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_0

    .line 174
    :pswitch_4
    const-string v9, "Ngin3dAnimationInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Text: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method private static newAnimationByTag(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 3
    .parameter "tag"
    .parameter "context"
    .parameter "parser"
    .parameter "mContainer"

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, animation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    const-string v1, "PropertyAnimation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-static {p1, p2, p3}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->parsePropertyAnimation(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 205
    :cond_0
    const-string v1, "KeyframeAnimation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-static {p1, p2, p3}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->parseKeyframeAnimation(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/animation/AnimationGroup;

    move-result-object v0

    .line 208
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sIsKeyframeAnimation:Z

    goto :goto_0

    .line 210
    :cond_1
    const-string v1, "AnimationGroup"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    invoke-static {p1, p2, p3}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->parseAnimationGroup(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/animation/AnimationGroup;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown Animation tag in xml file."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static newColorFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Color;
    .locals 11
    .parameter "string"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/16 v8, 0x10

    const/4 v7, 0x1

    .line 447
    const-string v5, "#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, arrayString:[Ljava/lang/String;
    aget-object v5, v0, v7

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 449
    .local v4, red:I
    aget-object v5, v0, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 450
    .local v3, green:I
    aget-object v5, v0, v7

    const/16 v6, 0x8

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 451
    .local v1, blue:I
    const-string v5, "Ngin3dAnimationInflater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newColorFromString -- red: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", green :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , blue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v2, Lcom/mediatek/ngin3d/Color;

    invoke-direct {v2, v4, v3, v1}, Lcom/mediatek/ngin3d/Color;-><init>(III)V

    .line 453
    .local v2, color:Lcom/mediatek/ngin3d/Color;
    const-string v5, "Ngin3dAnimationInflater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newColorFromString -- color: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-object v2
.end method

.method private static newOpacityFromString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .parameter "string"

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, mIntValues:I
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 467
    .local v1, opacity:Ljava/lang/Integer;
    const-string v2, "Ngin3dAnimationInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newOpacityFromString -- opacity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-object v1
.end method

.method private static parseAnimationGroup(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/animation/AnimationGroup;
    .locals 11
    .parameter "context"
    .parameter "parser"
    .parameter "mContainer"

    .prologue
    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 405
    sget-object v6, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 406
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 407
    .local v4, tagId:I
    const-string v6, "Ngin3dAnimationInflater"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AnimationGroup tagId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 411
    sget-object v6, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v7, "AnimationGroup"

    invoke-virtual {v6, v7}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveIntArray(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 412
    .local v3, ta:Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .line 413
    .local v5, target:Lcom/mediatek/ngin3d/Actor;
    sget-object v6, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v7, "AnimationGroup_target"

    invoke-virtual {v6, v7}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 414
    .local v2, animationTargetId:I
    if-eq v2, v9, :cond_0

    .line 415
    invoke-static {v2, p2}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->getAnimationTarget(ILcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v5

    .line 416
    const-string v6, "Ngin3dAnimationInflater"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AnimationGroup animationTargetId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  target: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    new-instance v1, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-direct {v1}, Lcom/mediatek/ngin3d/animation/AnimationGroup;-><init>()V

    .line 421
    .local v1, animationGroup:Lcom/mediatek/ngin3d/animation/AnimationGroup;
    invoke-virtual {v1, v4}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setTag(I)V

    .line 424
    if-eqz v5, :cond_1

    .line 425
    const-string v6, "Ngin3dAnimationInflater"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animationGroup set target: target= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1, v5}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->setTarget(Lcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/Animation;

    .line 430
    :cond_1
    sget-object v6, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v7, "AnimationGroup_loop"

    invoke-virtual {v6, v7}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setLoop(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 431
    sget-object v6, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v7, "AnimationGroup_autoReverse"

    invoke-virtual {v6, v7}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setAutoReverse(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 432
    const-string v6, "Ngin3dAnimationInflater"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseAnimationGroup loop: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v9, "AnimationGroup_loop"

    invoke-virtual {v8, v9}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , autoReverse: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v9, "AnimationGroup_autoReverse"

    invoke-virtual {v8, v9}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 436
    return-object v1
.end method

.method private static parseKeyframeAnimation(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/animation/AnimationGroup;
    .locals 12
    .parameter "context"
    .parameter "parser"
    .parameter "mContainer"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 352
    sget-object v7, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p0, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 353
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v7, 0x8

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 354
    .local v5, tagId:I
    const-string v7, "Ngin3dAnimationInflater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyframeAnimation tagId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    sget-object v7, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v8, "KeyframeAnimation"

    invoke-virtual {v7, v8}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveIntArray(Ljava/lang/String;)[I

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 359
    .local v4, ta:Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    .line 360
    .local v6, target:Lcom/mediatek/ngin3d/Actor;
    sget-object v7, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v8, "KeyframeAnimation_target"

    invoke-virtual {v7, v8}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 361
    .local v1, animationTargetId:I
    const-string v7, "Ngin3dAnimationInflater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyframeAnimation animationTargetId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eq v1, v10, :cond_0

    .line 363
    invoke-static {v1, p2}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->getAnimationTarget(ILcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v6

    .line 364
    const-string v7, "Ngin3dAnimationInflater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyframeAnimation animationTargetId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  target: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    sget-object v7, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v8, "KeyframeAnimation_dataSrc"

    invoke-virtual {v7, v8}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 369
    .local v2, dataSrc:I
    if-ne v2, v10, :cond_1

    .line 370
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid JSON file for keyframeAnimation. "

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 373
    :cond_1
    const-string v7, "Ngin3dAnimationInflater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyframeAnimation dataSrc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {p0, v2}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->loadAnimation(Landroid/content/Context;I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    .line 377
    .local v3, keyframeAnimation:Lcom/mediatek/ngin3d/animation/AnimationGroup;
    invoke-virtual {v3, v5}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setTag(I)V

    .line 380
    if-eqz v6, :cond_2

    .line 381
    const-string v7, "Ngin3dAnimationInflater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "keyframeAnimation set target: target= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v3, v6}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->setTarget(Lcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/Animation;

    .line 386
    :cond_2
    sget-object v7, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v8, "KeyframeAnimation_loop"

    invoke-virtual {v7, v8}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setLoop(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 387
    sget-object v7, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v8, "KeyframeAnimation_autoReverse"

    invoke-virtual {v7, v8}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setAutoReverse(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 388
    const-string v7, "Ngin3dAnimationInflater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyframeAnimation loop: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v10, "KeyframeAnimation_loop"

    invoke-virtual {v9, v10}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , autoReverse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v10, "KeyframeAnimation_autoReverse"

    invoke-virtual {v9, v10}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 392
    return-object v3
.end method

.method private static parsePropertyAnimation(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    .locals 22
    .parameter "context"
    .parameter "parser"
    .parameter "mContainer"

    .prologue
    .line 232
    sget-object v18, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 233
    .local v3, a:Landroid/content/res/TypedArray;
    const/16 v18, 0x8

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 234
    .local v14, tagId:I
    const-string v18, "Ngin3dAnimationInflater"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PropertyAnimation  tagId : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    sget-object v18, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v19, "PropertyAnimation"

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveIntArray(Ljava/lang/String;)[I

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 239
    .local v13, ta:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    .line 240
    .local v15, target:Lcom/mediatek/ngin3d/Actor;
    sget-object v18, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v19, "PropertyAnimation_target"

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 241
    .local v6, animationTargetId:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_0

    .line 242
    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->getAnimationTarget(ILcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v15

    .line 243
    const-string v18, "Ngin3dAnimationInflater"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PropertyAnimation animationTargetId:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  target: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    sget-object v18, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v19, "PropertyAnimation_from"

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 248
    .local v9, fromString:Ljava/lang/String;
    sget-object v18, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v19, "PropertyAnimation_to"

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 249
    .local v17, toString:Ljava/lang/String;
    if-eqz v9, :cond_1

    if-nez v17, :cond_2

    .line 250
    :cond_1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "invalid or null from or to attribute of the property aniamtion!"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 255
    :cond_2
    sget-object v18, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v19, "PropertyAnimation_property"

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 256
    .local v12, property:Ljava/lang/String;
    const-string v18, "Ngin3dAnimationInflater"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PropertyAnimation property: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v5, 0x0

    .line 259
    .local v5, animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const-string v18, "position"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 261
    invoke-static {v9}, Lcom/mediatek/ngin3d/Point;->newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Point;

    move-result-object v8

    .line 262
    .local v8, from:Lcom/mediatek/ngin3d/Point;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/ngin3d/Point;->newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Point;

    move-result-object v16

    .line 263
    .local v16, to:Lcom/mediatek/ngin3d/Point;
    const-string v18, "Ngin3dAnimationInflater"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PropertyAnimation from: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    if-nez v15, :cond_5

    .line 265
    new-instance v5, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    .end local v5           #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v5, v12, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    .end local v8           #from:Lcom/mediatek/ngin3d/Point;
    .end local v16           #to:Lcom/mediatek/ngin3d/Point;
    .restart local v5       #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    :goto_0
    invoke-virtual {v5, v14}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setTag(I)V

    .line 318
    invoke-static {}, Lcom/mediatek/ngin3d/animation/Mode;->values()[Lcom/mediatek/ngin3d/animation/Mode;

    move-result-object v10

    .line 319
    .local v10, mode:[Lcom/mediatek/ngin3d/animation/Mode;
    sget-object v18, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v19, "PropertyAnimation_alphaMode"

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 320
    .local v11, modeValue:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_3

    .line 321
    aget-object v4, v10, v11

    .line 322
    .local v4, alphaMode:Lcom/mediatek/ngin3d/animation/Mode;
    invoke-virtual {v5, v4}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setMode(Lcom/mediatek/ngin3d/animation/Mode;)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 323
    const-string v18, "Ngin3dAnimationInflater"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PropertyAnimation alphaMode: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v4           #alphaMode:Lcom/mediatek/ngin3d/animation/Mode;
    :cond_3
    sget-object v18, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v19, "PropertyAnimation_loop"

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setLoop(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 328
    sget-object v18, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v19, "PropertyAnimation_autoReverse"

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setAutoReverse(Z)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 329
    const-string v18, "Ngin3dAnimationInflater"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PropertyAnimation , loop: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v21, "PropertyAnimation_loop"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", autoReverse: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v21, "PropertyAnimation_autoReverse"

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v18, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v19, "PropertyAnimation_duration"

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 333
    .local v7, duration:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_4

    .line 334
    invoke-virtual {v5, v7}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    .line 336
    :cond_4
    const-string v18, "Ngin3dAnimationInflater"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PropertyAnimation duration: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 339
    return-object v5

    .line 267
    .end local v7           #duration:I
    .end local v10           #mode:[Lcom/mediatek/ngin3d/animation/Mode;
    .end local v11           #modeValue:I
    .restart local v8       #from:Lcom/mediatek/ngin3d/Point;
    .restart local v16       #to:Lcom/mediatek/ngin3d/Point;
    :cond_5
    new-instance v5, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    .end local v5           #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v5, v15, v12, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v5       #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    goto/16 :goto_0

    .line 269
    .end local v8           #from:Lcom/mediatek/ngin3d/Point;
    .end local v16           #to:Lcom/mediatek/ngin3d/Point;
    :cond_6
    const-string v18, "rotation"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 271
    invoke-static {v9}, Lcom/mediatek/ngin3d/Rotation;->newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Rotation;

    move-result-object v8

    .line 272
    .local v8, from:Lcom/mediatek/ngin3d/Rotation;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/ngin3d/Rotation;->newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Rotation;

    move-result-object v16

    .line 273
    .local v16, to:Lcom/mediatek/ngin3d/Rotation;
    const-string v18, "Ngin3dAnimationInflater"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PropertyAnimation from: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    if-nez v15, :cond_7

    .line 275
    new-instance v5, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    .end local v5           #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v5, v12, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v5       #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    goto/16 :goto_0

    .line 277
    :cond_7
    new-instance v5, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    .end local v5           #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v5, v15, v12, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v5       #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    goto/16 :goto_0

    .line 279
    .end local v8           #from:Lcom/mediatek/ngin3d/Rotation;
    .end local v16           #to:Lcom/mediatek/ngin3d/Rotation;
    :cond_8
    const-string v18, "scale"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 281
    invoke-static {v9}, Lcom/mediatek/ngin3d/Scale;->newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Scale;

    move-result-object v8

    .line 282
    .local v8, from:Lcom/mediatek/ngin3d/Scale;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/ngin3d/Scale;->newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Scale;

    move-result-object v16

    .line 283
    .local v16, to:Lcom/mediatek/ngin3d/Scale;
    const-string v18, "Ngin3dAnimationInflater"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PropertyAnimation from: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    if-nez v15, :cond_9

    .line 285
    new-instance v5, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    .end local v5           #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v5, v12, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v5       #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    goto/16 :goto_0

    .line 287
    :cond_9
    new-instance v5, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    .end local v5           #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v5, v15, v12, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v5       #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    goto/16 :goto_0

    .line 289
    .end local v8           #from:Lcom/mediatek/ngin3d/Scale;
    .end local v16           #to:Lcom/mediatek/ngin3d/Scale;
    :cond_a
    const-string v18, "color"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 291
    invoke-static {v9}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->newColorFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Color;

    move-result-object v8

    .line 292
    .local v8, from:Lcom/mediatek/ngin3d/Color;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->newColorFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Color;

    move-result-object v16

    .line 293
    .local v16, to:Lcom/mediatek/ngin3d/Color;
    const-string v18, "Ngin3dAnimationInflater"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PropertyAnimation from: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-nez v15, :cond_b

    .line 295
    new-instance v5, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    .end local v5           #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v5, v12, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v5       #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    goto/16 :goto_0

    .line 297
    :cond_b
    new-instance v5, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    .end local v5           #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v5, v15, v12, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v5       #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    goto/16 :goto_0

    .line 299
    .end local v8           #from:Lcom/mediatek/ngin3d/Color;
    .end local v16           #to:Lcom/mediatek/ngin3d/Color;
    :cond_c
    const-string v18, "opacity"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 301
    invoke-static {v9}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->newOpacityFromString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 302
    .local v8, from:Ljava/lang/Integer;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->newOpacityFromString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 303
    .local v16, to:Ljava/lang/Integer;
    const-string v18, "Ngin3dAnimationInflater"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PropertyAnimation from: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/ngin3d/android/Ngin3dAnimationInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    if-nez v15, :cond_d

    .line 305
    new-instance v5, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    .end local v5           #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v5, v12, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v5       #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    goto/16 :goto_0

    .line 307
    :cond_d
    new-instance v5, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    .end local v5           #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v5, v15, v12, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v5       #animation:Lcom/mediatek/ngin3d/animation/PropertyAnimation;
    goto/16 :goto_0

    .line 310
    .end local v8           #from:Ljava/lang/Integer;
    .end local v16           #to:Ljava/lang/Integer;
    :cond_e
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "invalid property attribute of PropertyAnimation in xml. "

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
.end method
