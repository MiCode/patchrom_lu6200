.class Landroid/opengl/EGLLogWrapper;
.super Ljava/lang/Object;
.source "EGLLogWrapper.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL11Real3DExt;


# instance fields
.field private mArgCount:I

.field mCheckError:Z

.field private mEgl10:Ljavax/microedition/khronos/egl/EGL10;

.field private mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

.field mLog:Ljava/io/Writer;

.field mLogArgumentNames:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V
    .locals 3
    .parameter "egl"
    .parameter "configFlags"
    .parameter "log"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 48
    check-cast v0, Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    iput-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    .line 50
    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    .end local p1
    iput-object p1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 51
    iput-object p3, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    .line 52
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    .line 54
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    .line 56
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    :cond_1
    move v1, v2

    .line 54
    goto :goto_1
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 485
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 489
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 462
    iget v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    if-lez v0, :cond_0

    .line 463
    const-string v0, ", "

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 465
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_1

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 468
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 503
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p2, v0, :cond_0

    .line 504
    const-string v0, "EGL10.EGL_NO_CONTEXT"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 493
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 494
    const-string v0, "EGL10.EGL_DEFAULT_DISPLAY"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 495
    :cond_0
    sget-object v0, Landroid/opengl/EGLLogWrapper;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne p2, v0, :cond_1

    .line 496
    const-string v0, "EGL10.EGL_NO_DISPLAY"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 511
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, v0, :cond_0

    .line 512
    const-string v0, "EGL10.EGL_NO_SURFACE"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;[I)V
    .locals 2
    .parameter "name"
    .parameter "arr"

    .prologue
    .line 544
    if-nez p2, :cond_0

    .line 545
    const-string/jumbo v0, "null"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "arr"

    .prologue
    .line 552
    if-nez p2, :cond_0

    .line 553
    const-string/jumbo v0, "null"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private begin(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 458
    const/4 v0, 0x0

    iput v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    .line 459
    return-void
.end method

.method private checkError()V
    .locals 4

    .prologue
    .line 435
    iget-object v2, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, eglError:I
    const/16 v2, 0x3000

    if-eq v0, v2, :cond_0

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, errorMessage:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->logLine(Ljava/lang/String;)V

    .line 438
    iget-boolean v2, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    if-eqz v2, :cond_0

    .line 439
    new-instance v2, Landroid/opengl/GLException;

    invoke-direct {v2, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 442
    .end local v1           #errorMessage:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private end()V
    .locals 1

    .prologue
    .line 472
    const-string v0, ");\n"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    .line 474
    return-void
.end method

.method private flush()V
    .locals 2

    .prologue
    .line 478
    :try_start_0
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    goto :goto_0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1
    .parameter "error"

    .prologue
    .line 600
    packed-switch p0, :pswitch_data_0

    .line 632
    invoke-static {p0}, Landroid/opengl/EGLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 602
    :pswitch_0
    const-string v0, "EGL_SUCCESS"

    goto :goto_0

    .line 604
    :pswitch_1
    const-string v0, "EGL_NOT_INITIALIZED"

    goto :goto_0

    .line 606
    :pswitch_2
    const-string v0, "EGL_BAD_ACCESS"

    goto :goto_0

    .line 608
    :pswitch_3
    const-string v0, "EGL_BAD_ALLOC"

    goto :goto_0

    .line 610
    :pswitch_4
    const-string v0, "EGL_BAD_ATTRIBUTE"

    goto :goto_0

    .line 612
    :pswitch_5
    const-string v0, "EGL_BAD_CONFIG"

    goto :goto_0

    .line 614
    :pswitch_6
    const-string v0, "EGL_BAD_CONTEXT"

    goto :goto_0

    .line 616
    :pswitch_7
    const-string v0, "EGL_BAD_CURRENT_SURFACE"

    goto :goto_0

    .line 618
    :pswitch_8
    const-string v0, "EGL_BAD_DISPLAY"

    goto :goto_0

    .line 620
    :pswitch_9
    const-string v0, "EGL_BAD_MATCH"

    goto :goto_0

    .line 622
    :pswitch_a
    const-string v0, "EGL_BAD_NATIVE_PIXMAP"

    goto :goto_0

    .line 624
    :pswitch_b
    const-string v0, "EGL_BAD_NATIVE_WINDOW"

    goto :goto_0

    .line 626
    :pswitch_c
    const-string v0, "EGL_BAD_PARAMETER"

    goto :goto_0

    .line 628
    :pswitch_d
    const-string v0, "EGL_BAD_SURFACE"

    goto :goto_0

    .line 630
    :pswitch_e
    const-string v0, "EGL_CONTEXT_LOST"

    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 450
    :try_start_0
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method private returns(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 524
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private returns(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    .line 521
    return-void
.end method

.method private returns(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 528
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method private toString(I[II)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    array-length v0, p2

    .line 563
    .local v0, arrLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 564
    add-int v3, p3, v2

    .line 565
    .local v3, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 567
    :cond_0
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    :cond_1
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 573
    .end local v3           #index:I
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(I[Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    array-length v0, p2

    .line 581
    .local v0, arrLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 582
    add-int v3, p3, v2

    .line 583
    .local v3, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 585
    :cond_0
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    :cond_1
    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 591
    .end local v3           #index:I
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 536
    if-nez p1, :cond_0

    .line 537
    const-string/jumbo v0, "null"

    .line 539
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 7
    .parameter "display"
    .parameter "attrib_list"
    .parameter "configs"
    .parameter "config_size"
    .parameter "num_config"

    .prologue
    .line 60
    const-string v0, "eglChooseConfig"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 61
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 62
    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 63
    const-string v0, "config_size"

    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 64
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 66
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    .line 68
    .local v6, result:Z
    const-string v0, "configs"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string/jumbo v0, "num_config"

    invoke-direct {p0, v0, p5}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 70
    invoke-direct {p0, v6}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 71
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 72
    return v6
.end method

.method public eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
    .locals 2
    .parameter "display"
    .parameter "surface"
    .parameter "native_pixmap"

    .prologue
    .line 77
    const-string v1, "eglCopyBuffers"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 78
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 79
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 80
    const-string/jumbo v1, "native_pixmap"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 83
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z

    move-result v0

    .line 84
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 85
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 86
    return v0
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "share_context"
    .parameter "attrib_list"

    .prologue
    .line 91
    const-string v1, "eglCreateContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 92
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 93
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string/jumbo v1, "share_context"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 95
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 96
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 98
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 100
    .local v0, result:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 102
    return-object v0
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "attrib_list"

    .prologue
    .line 107
    const-string v1, "eglCreatePbufferSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 108
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 109
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 111
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 113
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 115
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 116
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 117
    return-object v0
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "native_pixmap"
    .parameter "attrib_list"

    .prologue
    .line 122
    const-string v1, "eglCreatePixmapSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 123
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 124
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string/jumbo v1, "native_pixmap"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 127
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 129
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 131
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 132
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 133
    return-object v0
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "native_window"
    .parameter "attrib_list"

    .prologue
    .line 138
    const-string v1, "eglCreateWindowSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 139
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 140
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string/jumbo v1, "native_window"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 143
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 145
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 147
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 149
    return-object v0
.end method

.method public eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 2
    .parameter "display"
    .parameter "context"

    .prologue
    .line 153
    const-string v1, "eglDestroyContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 154
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 155
    const-string v1, "context"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 156
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 158
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 159
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 160
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 161
    return v0
.end method

.method public eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 2
    .parameter "display"
    .parameter "surface"

    .prologue
    .line 165
    const-string v1, "eglDestroySurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 166
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 167
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 168
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 170
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    .line 171
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 172
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 173
    return v0
.end method

.method public eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 178
    const-string v1, "eglGetConfigAttrib"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 179
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 180
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 182
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 183
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 185
    .local v0, result:Z
    const-string/jumbo v1, "value"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 186
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 187
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 188
    const/4 v1, 0x0

    return v1
.end method

.method public eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "configs"
    .parameter "config_size"
    .parameter "num_config"

    .prologue
    .line 193
    const-string v1, "eglGetConfigs"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 194
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 195
    const-string v1, "config_size"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 196
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 198
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 200
    .local v0, result:Z
    const-string v1, "configs"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    const-string/jumbo v1, "num_config"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 202
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 203
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 204
    return v0
.end method

.method public eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    .prologue
    .line 208
    const-string v1, "eglGetCurrentContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 211
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 212
    .local v0, result:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 215
    return-object v0
.end method

.method public eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2

    .prologue
    .line 219
    const-string v1, "eglGetCurrentDisplay"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 222
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 223
    .local v0, result:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 225
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 226
    return-object v0
.end method

.method public eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "readdraw"

    .prologue
    .line 230
    const-string v1, "eglGetCurrentSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "readdraw"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 232
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 234
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 235
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 237
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 238
    return-object v0
.end method

.method public eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2
    .parameter "native_display"

    .prologue
    .line 242
    const-string v1, "eglGetDisplay"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v1, "native_display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 246
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 247
    .local v0, result:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 249
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 250
    return-object v0
.end method

.method public eglGetError()I
    .locals 2

    .prologue
    .line 254
    const-string v1, "eglGetError"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 257
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 258
    .local v0, result:I
    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 260
    return v0
.end method

.method public eglGetReal3DConvertMode()Z
    .locals 2

    .prologue
    .line 424
    const-string v1, "eglGetReal3DConvertMode"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 425
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 426
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL11Real3DExt;->eglGetReal3DConvertMode()Z

    move-result v0

    .line 427
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 428
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 429
    return v0
.end method

.method public eglGetReal3DProfile(Landroid/opengl/EGLReal3DProfile;)Landroid/opengl/EGLReal3DProfile;
    .locals 2
    .parameter "profile"

    .prologue
    .line 393
    const-string v1, "eglGetReal3DProfile"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v1, "profile"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 396
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL11Real3DExt;->eglGetReal3DProfile(Landroid/opengl/EGLReal3DProfile;)Landroid/opengl/EGLReal3DProfile;

    move-result-object v0

    .line 397
    .local v0, result:Landroid/opengl/EGLReal3DProfile;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 398
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 399
    return-object v0
.end method

.method public eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
    .locals 2
    .parameter "display"
    .parameter "major_minor"

    .prologue
    .line 264
    const-string v1, "eglInitialize"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 265
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 266
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 267
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    .line 268
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 269
    const-string/jumbo v1, "major_minor"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 270
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 271
    return v0
.end method

.method public eglIsEnableReal3DProfile()Z
    .locals 2

    .prologue
    .line 404
    const-string v1, "eglIsEnableReal3DProfile"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 406
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL11Real3DExt;->eglIsEnableReal3DProfile()Z

    move-result v0

    .line 407
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 408
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 409
    return v0
.end method

.method public eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 2
    .parameter "display"
    .parameter "draw"
    .parameter "read"
    .parameter "context"

    .prologue
    .line 276
    const-string v1, "eglMakeCurrent"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 277
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 278
    const-string v1, "draw"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 279
    const-string/jumbo v1, "read"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 280
    const-string v1, "context"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 281
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 282
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 283
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 284
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 285
    return v0
.end method

.method public eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "context"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 290
    const-string v1, "eglQueryContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 291
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 292
    const-string v1, "context"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 293
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 294
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 295
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    move-result v0

    .line 297
    .local v0, result:Z
    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    .line 298
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 299
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 300
    return v0
.end method

.method public eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
    .locals 2
    .parameter "display"
    .parameter "name"

    .prologue
    .line 304
    const-string v1, "eglQueryString"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 305
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 306
    const-string/jumbo v1, "name"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 307
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 308
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 311
    return-object v0
.end method

.method public eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "surface"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 316
    const-string v1, "eglQuerySurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 317
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 318
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 319
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 320
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 321
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v0

    .line 323
    .local v0, result:Z
    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    .line 324
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 325
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 326
    return v0
.end method

.method public eglReleaseThread()Z
    .locals 2

    .prologue
    .line 331
    const-string v1, "eglReleaseThread"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 333
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglReleaseThread()Z

    move-result v0

    .line 334
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 335
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 336
    return v0
.end method

.method public eglSetReal3DConvertMode(Z)V
    .locals 2
    .parameter "isOn"

    .prologue
    .line 414
    const-string v0, "eglSetReal3DConvertMode"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v0, "isOn"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 417
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL11Real3DExt;->eglSetReal3DConvertMode(Z)V

    .line 418
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 419
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 420
    return-void
.end method

.method public eglSetReal3DProfile(Landroid/opengl/EGLReal3DProfile;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 383
    const-string v0, "eglSetReal3DProfile"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v0, "profile"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 386
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL11Real3DExt;->eglSetReal3DProfile(Landroid/opengl/EGLReal3DProfile;)V

    .line 387
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 388
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 389
    return-void
.end method

.method public eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 2
    .parameter "display"
    .parameter "surface"

    .prologue
    .line 340
    const-string v1, "eglInitialize"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 341
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 342
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 343
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 344
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    .line 345
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 346
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 347
    return v0
.end method

.method public eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    .locals 2
    .parameter "display"

    .prologue
    .line 351
    const-string v1, "eglTerminate"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 352
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 353
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 354
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    .line 355
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 356
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 357
    return v0
.end method

.method public eglWaitGL()Z
    .locals 2

    .prologue
    .line 361
    const-string v1, "eglWaitGL"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 363
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    move-result v0

    .line 364
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 365
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 366
    return v0
.end method

.method public eglWaitNative(ILjava/lang/Object;)Z
    .locals 2
    .parameter "engine"
    .parameter "bindTarget"

    .prologue
    .line 370
    const-string v1, "eglWaitNative"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 371
    const-string v1, "engine"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 372
    const-string v1, "bindTarget"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 374
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    move-result v0

    .line 375
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 376
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 377
    return v0
.end method
