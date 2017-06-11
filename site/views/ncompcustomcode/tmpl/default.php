<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_helloworld
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
 
// No direct access to this file
defined('_JEXEC') or die('Restricted access');

$doc = JFactory::getDocument();
$doc->addScriptDeclaration($this->msg['js']);
$doc->addStyleDeclaration($this->msg['css']);
?>
<div class="row-fluid">	<?php echo $this->msg['html']; ?></div>