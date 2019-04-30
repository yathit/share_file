package com.yathit.sharefile;

import androidx.core.content.FileProvider;

/**
 * Providing a custom {@code FileProvider} prevents manifest {@code <provider>} name collisions.
 *
 */
public class ShareFileProvider extends FileProvider {
}
